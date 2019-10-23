#include <ros/ros.h>
#include <vector>
#include <stdexcept>
#include <math.h>      
#include <sensor_msgs/Image.h>
#include <sensor_msgs/CameraInfo.h>
#include <sensor_msgs/image_encodings.h>
#include <boost/format.hpp>
#include "visp_bridge/image.h"
#include <visp3/gui/vpDisplayOpenCV.h>
#include <visp3/io/vpImageIo.h>
#include <visp3/io/vpVideoReader.h>
#include <visp3/vision/vpKeyPoint.h>
#include <cv_bridge/cv_bridge.h>
#include <opencv2/imgproc/imgproc.hpp>
#include <iostream>
#include "opencv2/core.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/features2d.hpp"
#include "opencv2/xfeatures2d.hpp"
#include <visp3/robot/vpSimulatorCamera.h>
#include <visp3/visual_features/vpFeatureBuilder.h>
#include <visp3/vs/vpServo.h>
#include <moveit/robot_model_loader/robot_model_loader.h>
#include <moveit/robot_model/robot_model.h>
#include <moveit/robot_state/robot_state.h>
#include <Eigen/Dense>
#include <baxter_core_msgs/JointCommand.h>
#include <tf/transform_listener.h>



using namespace cv;
using namespace cv::xfeatures2d;
using namespace std;
using std::cout;
using std::endl;

class SIFTmatch {

public:

    explicit SIFTmatch(ros::NodeHandle nh) : m_nh(nh)  {

        // define the subscriber and publisher
        m_ref = m_nh.subscribe ("/obj_recognition/image_ref", 1, &SIFTmatch::refConversion, this);
        m_cur= m_nh.subscribe ("/obj_recognition/image_cur", 1, &SIFTmatch::featureExtractor, this);
        m_states=m_nh.subscribe ("/robot/joint_states", 1, &SIFTmatch::jointStates,this);
        m_camera=  m_nh.subscribe ("/cameras/left_hand_camera/camera_info", 1, &SIFTmatch::intrinsicParams, this);
        joint_pub = m_nh.advertise<baxter_core_msgs::JointCommand>("/robot/limb/left/joint_command", 1);
        
        
    }

private:

    ros::NodeHandle m_nh;
    ros::Subscriber m_ref, m_cur, m_camera, m_states;
    ros::Publisher joint_pub;
    Mat/*vpImage<unsigned char>*/ I_ref;
    Mat/*vpImage<unsigned char>*/ I_cur;
    float K[9];
    std::vector<KeyPoint> keypoints1;
    Mat descriptors1;
    int first,img_counter=0;
    std::vector<double> joint_pos;
    

    void refConversion(const sensor_msgs::Image& src);
    void curConversion(const sensor_msgs::Image& src);
    void intrinsicParams(const sensor_msgs::CameraInfo& src);
    void jointStates(const sensor_msgs::JointState& src);

public:
    void featureExtractor (const sensor_msgs::Image& src);
    Eigen::MatrixXd pseudoinverse(const Eigen::MatrixXd &mat, float tolerance);
    

}; // end class definition

void SIFTmatch::intrinsicParams(const sensor_msgs::CameraInfo& src){

    int i;

    for(i=0;i<9;i++)
        K[i]=src.K[i];
    printf("Got the intrinsic parameters\n");
    m_camera.shutdown();
    return;
}

void SIFTmatch::jointStates(const sensor_msgs::JointState& src){

    joint_pos.resize(7);
    joint_pos[2]=src.position[3];//e_0
    joint_pos[3]=src.position[4];//e_1
    joint_pos[0]=src.position[5];//s_0
    joint_pos[1]=src.position[6];//s_1
    joint_pos[4]=src.position[7];//w_0
    joint_pos[5]=src.position[8];//w_1
    joint_pos[6]=src.position[9];//w_2

    return;
}


Eigen::MatrixXd SIFTmatch::pseudoinverse(const Eigen::MatrixXd &mat, float tolerance /*= typename MatT::Scalar{1e-4}*/) // choose appropriately
{
    auto svd = mat.jacobiSvd(Eigen::ComputeFullU | Eigen::ComputeFullV);
    const auto &singularValues = svd.singularValues();
    Eigen::MatrixXd singularValuesInv(mat.cols(), mat.rows());
    singularValuesInv.setZero();
    for (unsigned int i = 0; i < singularValues.size(); ++i) {
        if (singularValues(i) > tolerance)
        {
            singularValuesInv(i, i) = 1 / singularValues(i);
        }
        else
        {
            singularValuesInv(i, i) = 0;
        }
    }
    return svd.matrixV() * singularValuesInv * svd.matrixU().adjoint();
}




void SIFTmatch::refConversion(const sensor_msgs::Image& src){

   
   cv_bridge::CvImagePtr cv_ptr;
    try
    {
      cv_ptr = cv_bridge::toCvCopy(src, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }

    I_ref=cv_ptr->image;
    first=1;
  
    printf("Reference image converted\n");
   //featureExtractor();
   return;
   

}

void SIFTmatch::curConversion(const sensor_msgs::Image& src){

   
   cv_bridge::CvImagePtr cv_ptr;
    try
    {
      cv_ptr = cv_bridge::toCvCopy(src, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }

    I_cur=cv_ptr->image;
    printf("Current image converted\n");
    //featureExtractor();
   return;
  

}

// define callback function
void SIFTmatch::featureExtractor (const sensor_msgs::Image& src){  

    /*if ( I_ref.empty() || I_cur.empty() )
    {
        printf("Not enough images\n");
        return;
    }*/
    m_cur.shutdown();
    cv_bridge::CvImagePtr cv_ptr;
    try
    {
      cv_ptr = cv_bridge::toCvCopy(src, sensor_msgs::image_encodings::BGR8);
    }
    catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }

    I_cur=cv_ptr->image;
    printf("Current image converted\n");

    //-- Step 1: Detect the keypoints using SURF Detector, compute the descriptors
    int minHessian = 400;
    Ptr<SURF> detector = SURF::create( minHessian );

    std::vector<KeyPoint> /*keypoints1,*/ keypoints2;
    Mat /*descriptors1,*/ descriptors2;
    if(first==1){
        detector->detectAndCompute( I_ref, noArray(), keypoints1, descriptors1 );
        first=0;
        printf("PRIMEIRA ITERAÇAO!!!!!!!!!!!!!!!!!!!!\n");
    }
    //detector->detectAndCompute( I_ref, noArray(), keypoints1, descriptors1 );
    detector->detectAndCompute( I_cur, noArray(), keypoints2, descriptors2 );

    //-- Step 2: Matching descriptor vectors with a FLANN based matcher
    // Since SURF is a floating-point descriptor NORM_L2 is used

    Ptr<DescriptorMatcher> matcher = DescriptorMatcher::create(DescriptorMatcher::FLANNBASED);
    std::vector< std::vector<DMatch> > knn_matches;
    matcher->knnMatch( descriptors1, descriptors2, knn_matches, 2 );

    //-- Filter matches using the Lowe's ratio test

    const float ratio_thresh = 0.5f;
    std::vector<DMatch> good_matches;
    Mat gripper_mask=imread("/home/miguel/catkin_ws/mask/left0000.jpg",CV_LOAD_IMAGE_COLOR);
    /*printf("MASK SIZE: %d %d\n",gripper_mask.rows,gripper_mask.cols);
    printf("IMAGE SIZE: %d %d\n", I_ref.rows, I_ref.cols);*/

    
    vector<vpFeaturePoint> p, pd;
    float error;
    int i,count=0;

    //do{        
        vpServo task;
        task.setServo(vpServo::EYEINHAND_CAMERA);
        task.setInteractionMatrixType(vpServo::DESIRED);
        task.setLambda(0.1);
        count=0;

        for (i = 0; i < knn_matches.size(); i++){
            if (knn_matches[i][0].distance < ratio_thresh * knn_matches[i][1].distance /*&& knn_matches[i][0].distance<50*/){
            
                Vec3b intensity=gripper_mask.at<Vec3b>(cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.y),cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.x));
                //printf("%d %d %d\n",intensity.val[0],intensity.val[1],intensity.val[2]);
                if((gripper_mask.at<Vec3b>(cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.y),cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.x)).val[0]!=0 ||
                gripper_mask.at<Vec3b>(cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.y),cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.x)).val[1]!=0 || 
                gripper_mask.at<Vec3b>(cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.y),cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.x)).val[2]!=0)){
                    //good_matches.insert(good_matches.begin(),knn_matches[i][0]);
                    count++;
                    good_matches.push_back(knn_matches[i][0]);
                    printf("(%f, %f) --> %f\n",(cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.x)-K[2])/K[0], (cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.y)-K[5])/K[4], knn_matches[i][0].distance);
                    //printf("DISTANCE: %f\n",knn_matches[i][0].distance);
                }
            }
        }
        std::sort(good_matches.begin(), good_matches.end());
        good_matches.resize(count);
        p.resize(good_matches.size());
        pd.resize(good_matches.size());
        //DEFINIR OS PONTOS PELAS FEATURES ENCONTRADAS

        //VER SE O QUERY E TRAIN IDX ESTÁ BEM https://github.com/spmallick/learnopencv/blob/master/ImageAlignment-FeatureBased/align.cpp
        //https://www.learnopencv.com/image-alignment-feature-based-using-opencv-c-python/

        //EXPERIMENTAR TROCAR O X E O Y
        for(i=0; i<good_matches.size(); i++){
            pd[i].buildFrom((cvRound(keypoints1[good_matches[i].queryIdx].pt.x)-K[2])/K[0], (cvRound(keypoints1[good_matches[i].queryIdx].pt.y)-K[5])/K[4], 0.15);
            p[i].buildFrom((cvRound(keypoints2[good_matches[i].trainIdx].pt.x)-K[2])/K[0], (cvRound(keypoints2[good_matches[i].trainIdx].pt.y)-K[5])/K[4], 0.15);
            task.addFeature(p[i],pd[i]);
        }
        vpColVector v = task.computeControlLaw(); // camera velocity
        
        error =  ( task.getError() ).sumSquare();
        task.kill();
        printf("ERROR: %f\n",error);
        if(error<0.1){
            m_cur.shutdown();
            ros::shutdown();
        }
            

    //}while(error>0.001);
    ROS_INFO_STREAM("Velocity in camera frame: \n" << v << "\n");
    //-- Draw matches
    Mat img_matches;
    drawMatches( I_ref, keypoints1, I_cur, keypoints2, good_matches, img_matches, Scalar::all(-1),
                 Scalar::all(-1), std::vector<char>(), DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS );
    //-- Show detected matches
    //imshow("Good Matches", img_matches );
    printf("IMAGEM NÚMERO: %d\n", img_counter);
    std::string img_name("image_" +
                  std::to_string(img_counter) + ".png");
    imwrite(img_name,img_matches);
    img_counter++;
    //waitKey(0);
    
    robot_model_loader::RobotModelLoader robot_model_loader("robot_description");
    robot_model::RobotModelPtr kinematic_model = robot_model_loader.getModel();
    ROS_INFO("Model frame: %s", kinematic_model->getModelFrame().c_str());

    robot_state::RobotStatePtr kinematic_state(new robot_state::RobotState(kinematic_model));
        
    const robot_state::JointModelGroup* joint_model_group = kinematic_model->getJointModelGroup("left_arm");
    kinematic_state->setJointGroupPositions(joint_model_group,joint_pos);
    kinematic_state->enforceBounds();

    ROS_INFO_STREAM("Link: " << joint_model_group->getLinkModelNames().back() << "\n");
    tf::TransformListener listener;
    tf::StampedTransform t;
    listener.waitForTransform("base", "left_hand_camera_axis", ros::Time::now(), ros::Duration(3.0));
    listener.lookupTransform("base", "left_hand_camera_axis", ros::Time(0), t);
    Eigen::Vector3d reference_point_position(0,0,0);
    ROS_INFO_STREAM("Translation: \n" << t.getOrigin().getX() << " " << t.getOrigin().getY() << " " << t.getOrigin().getZ() << " " << "\n");
    ROS_INFO_STREAM("Rotation: \n" << t.getBasis().getRow(0).getX() << " " << t.getBasis().getRow(0).getY() << " " << t.getBasis().getRow(0).getZ()
     << "\n" << t.getBasis().getRow(1).getX() << " " << t.getBasis().getRow(1).getY() << " " << t.getBasis().getRow(1).getZ()
     << "\n" << t.getBasis().getRow(2).getX() << " " << t.getBasis().getRow(2).getY() << " " << t.getBasis().getRow(2).getZ() << "\n");

    
    Eigen::Matrix3f Rot;
    Rot << t.getBasis().getRow(0).getX(), t.getBasis().getRow(0).getY(), t.getBasis().getRow(0).getZ(),
    t.getBasis().getRow(1).getX(), t.getBasis().getRow(1).getY(), t.getBasis().getRow(1).getZ(),
    t.getBasis().getRow(2).getX(), t.getBasis().getRow(2).getY(), t.getBasis().getRow(2).getZ();
    Eigen::MatrixXd jacobian;
    Eigen::MatrixXd pdi;
    Eigen::MatrixXd joint_vel;
    Eigen::Matrix<double, 6, 1> vel;
    //TRANSFORMAR DE LEFT_WRIST PARA BASE
    for(i=0;i<6;i++)
        vel[i]=v[i];

    ROS_INFO_STREAM("Velocity in camera frame: \n" << vel << "\n");

    Eigen::Vector3f linVel, angVel, transLinVel, transAngVel;
    linVel << vel[0], vel[1], vel[2];
    angVel << vel[3], vel[4], vel[5];
    transLinVel=Rot*linVel;
    transAngVel=Rot*angVel;

    vel << transLinVel[0], transLinVel[1], transLinVel[2], transAngVel[0], transAngVel[1], transAngVel[2];


    ROS_INFO_STREAM("Velocity in base frame: \n" << vel << "\n");
    kinematic_state->getJacobian(joint_model_group,
                             kinematic_state->getLinkModel(joint_model_group->getLinkModelNames().back()),
                             reference_point_position, jacobian);
    ROS_INFO_STREAM("Jacobian: \n" << jacobian << "\n");
    pdi=pseudoinverse(jacobian,0.0001);
    ROS_INFO_STREAM("Pseudo-Inverse: \n" << pdi << "\n");
    joint_vel=pdi*vel;
    ROS_INFO_STREAM("Joint Velocities: \n" << joint_vel << "\n");

    baxter_core_msgs::JointCommand msg;
    msg.mode=baxter_core_msgs::JointCommand::POSITION_MODE;
    msg.command.resize(7);
    m_states.shutdown();
    for(i=0;i<7;i++){
        //ros::Duration(0.05).sleep();
        msg.command[i]=joint_pos[i]+joint_vel(i,0)*0.2; 
    }
    m_states=m_nh.subscribe ("/robot/joint_states",1,&SIFTmatch::jointStates,this);
    /*msg.command[0]=0.192483;
    msg.command[1]=1.047;
    msg.command[2]=0.000806359;
    msg.command[3]=0.491094;
    msg.command[4]=-0.178079;
    msg.command[5]=-0.0610333;
    msg.command[6]=0.5;*/
    msg.names={"left_s0","left_s1","left_e0","left_e1","left_w0","left_w1","left_w2"};
    joint_pub.publish(msg);
    ros::Duration(0.5).sleep();
    m_cur= m_nh.subscribe ("/obj_recognition/image_cur", 1, &SIFTmatch::featureExtractor, this);
    return;   
}


int main (int argc, char** argv)
{
    // Initialize ROS
    ros::init (argc, argv, "SIFTmatch");
    ros::NodeHandle nh;

    SIFTmatch segs(nh);

    while(ros::ok()){
        ros::spin ();
        
    }
        

}
