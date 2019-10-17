#include <ros/ros.h>
#include <vector>
#include <stdexcept>
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
        m_camera=  m_nh.subscribe ("/cameras/left_hand_camera/camera_info", 1, &SIFTmatch::intrinsicParams, this);
        joint_pub = m_nh.advertise<baxter_core_msgs::JointCommand>("/robot/limb/left/joint_command", 100);
        
        
    }

private:

    ros::NodeHandle m_nh;
    ros::Subscriber m_ref, m_cur, m_camera;
    ros::Publisher joint_pub;
    Mat/*vpImage<unsigned char>*/ I_ref;
    Mat/*vpImage<unsigned char>*/ I_cur;
    float K[9];
    std::vector<KeyPoint> keypoints1;
    Mat descriptors1;
    int first;
    

    void refConversion(const sensor_msgs::Image& src);
    void curConversion(const sensor_msgs::Image& src);
    void intrinsicParams(const sensor_msgs::CameraInfo& src);

public:
    void featureExtractor (const sensor_msgs::Image& src);
    template <class MatT>
    Eigen::Matrix<typename MatT::Scalar, MatT::ColsAtCompileTime, MatT::RowsAtCompileTime>
    pseudoinverse(const MatT &mat, typename MatT::Scalar tolerance = typename MatT::Scalar{1e-4});
    

}; // end class definition

void SIFTmatch::intrinsicParams(const sensor_msgs::CameraInfo& src){

    int i;

    for(i=0;i<9;i++)
        K[i]=src.K[i];
    printf("Got the intrinsic parameters\n");
    m_camera.shutdown();
    return;
}





template <class MatT>
    Eigen::Matrix<typename MatT::Scalar, MatT::ColsAtCompileTime, MatT::RowsAtCompileTime>
SIFTmatch::pseudoinverse(const MatT &mat, typename MatT::Scalar tolerance /*= typename MatT::Scalar{1e-4}*/) // choose appropriately
{
    typedef typename MatT::Scalar Scalar;
    auto svd = mat.jacobiSvd(Eigen::ComputeFullU | Eigen::ComputeFullV);
    const auto &singularValues = svd.singularValues();
    Eigen::Matrix<Scalar, MatT::ColsAtCompileTime, MatT::RowsAtCompileTime> singularValuesInv(mat.cols(), mat.rows());
    singularValuesInv.setZero();
    for (unsigned int i = 0; i < singularValues.size(); ++i) {
        if (singularValues(i) > tolerance)
        {
            singularValuesInv(i, i) = Scalar{1} / singularValues(i);
        }
        else
        {
            singularValuesInv(i, i) = Scalar{0};
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
    Ptr<SIFT> detector = SIFT::create( minHessian );

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

    const float ratio_thresh = 0.8f;
    std::vector<DMatch> good_matches;
    Mat gripper_mask=imread("/home/miguel/catkin_ws/mask/left0000.jpg",CV_LOAD_IMAGE_COLOR);
    printf("MASK SIZE: %d %d\n",gripper_mask.rows,gripper_mask.cols);
    printf("IMAGE SIZE: %d %d\n", I_ref.rows, I_ref.cols);

    
    vector<vpFeaturePoint> p, pd;
    float error;
    int i,count=0;

    //do{        
     /*   vpServo task;
        task.setServo(vpServo::EYEINHAND_CAMERA);
        task.setInteractionMatrixType(vpServo::DESIRED);
        task.setLambda(0.5);
        count=0;

        for (i = 0; i < knn_matches.size(); i++){
            if (knn_matches[i][0].distance < ratio_thresh * knn_matches[i][1].distance && knn_matches[i][0].distance<50){
            
                Vec3b intensity=gripper_mask.at<Vec3b>(cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.y),cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.x));
                //printf("%d %d %d\n",intensity.val[0],intensity.val[1],intensity.val[2]);
                if((gripper_mask.at<Vec3b>(cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.y),cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.x)).val[0]!=0 ||
                gripper_mask.at<Vec3b>(cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.y),cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.x)).val[1]!=0 || 
                gripper_mask.at<Vec3b>(cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.y),cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.x)).val[2]!=0)){
                    good_matches.insert(good_matches.begin(),knn_matches[i][0]);
                    count++;
                    //good_matches.push_back(knn_matches[i][0]);
                    printf("(%f, %f) --> %f\n",(cvRound(keypoints1[knn_matches[i][0].trainIdx].pt.x)-K[2])/K[0], (cvRound(keypoints1[knn_matches[i][0].trainIdx].pt.y)-K[5])/K[4], knn_matches[i][0].distance);
                    //printf("DISTANCE: %f\n",knn_matches[i][0].distance);
                }
            }
        }
        good_matches.resize(count);
        p.resize(good_matches.size());
        pd.resize(good_matches.size());
        //DEFINIR OS PONTOS PELAS FEATURES ENCONTRADAS
        for(i=0; i<good_matches.size(); i++){
            p[i].buildFrom((cvRound(keypoints1[good_matches[i].trainIdx].pt.x)-K[2])/K[0], (cvRound(keypoints1[good_matches[i].trainIdx].pt.y)-K[5])/K[4], 0.1);
            pd[i].buildFrom((cvRound(keypoints2[good_matches[i].queryIdx].pt.x)-K[2])/K[0], (cvRound(keypoints2[good_matches[i].queryIdx].pt.y)-K[5])/K[4], 0.1);
            task.addFeature(p[i],pd[i]);
        }
        vpColVector v = task.computeControlLaw(); // camera velocity
        for (unsigned int i = 0; i < v.size(); i++) {
            std::cout << v[i] << std::endl;
        }
        error =  ( task.getError() ).sumSquare();
        //task.kill();
        printf("ERROR: %f\n",error);
        if(error<0.001){
            m_cur.shutdown();
            ros::shutdown();
        }
            
*/
    //}while(error>0.001);

    //-- Draw matches
    /*Mat img_matches;
    drawMatches( I_ref, keypoints1, I_cur, keypoints2, good_matches, img_matches, Scalar::all(-1),
                 Scalar::all(-1), std::vector<char>(), DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS );
    //-- Show detected matches
    imshow("Good Matches", img_matches );
    waitKey(0);*/

    robot_model_loader::RobotModelLoader robot_model_loader("robot_description");
    robot_model::RobotModelPtr kinematic_model = robot_model_loader.getModel();
    ROS_INFO("Model frame: %s", kinematic_model->getModelFrame().c_str());

    robot_state::RobotStatePtr kinematic_state(new robot_state::RobotState(kinematic_model));
    const robot_state::JointModelGroup* joint_model_group = kinematic_model->getJointModelGroup("left_arm");

    ROS_INFO_STREAM("Link: " << joint_model_group->getLinkModelNames().back() << "\n");
    Eigen::Vector3d reference_point_position(0.0, 0.0, 0.0);
    Eigen::MatrixXd jacobian;
    Eigen::MatrixXd pdi;
    Eigen::MatrixXd joint_vel;
    Eigen::Matrix<double, 6, 1> vel;
    /*for(i=0;i<6;i++)
        vel[i]=v[i];*/
    vel[0]=0;
    vel[1]=0;
    vel[2]=0;
    vel[3]=0;
    vel[4]=0;
    vel[5]=0;
    ROS_INFO_STREAM("Velocity: \n" << vel << "\n");
    kinematic_state->getJacobian(joint_model_group,
                             kinematic_state->getLinkModel(joint_model_group->getLinkModelNames().back()),
                             reference_point_position, jacobian);
    ROS_INFO_STREAM("Jacobian: \n" << jacobian << "\n");
    pdi=pseudoinverse(jacobian,0.0001);
    ROS_INFO_STREAM("Pseudo-Inverse: \n" << pdi << "\n");
    joint_vel=pdi*vel;
    ROS_INFO_STREAM("Joint Velocities: \n" << joint_vel << "\n");

    baxter_core_msgs::JointCommand msg;
    msg.mode=baxter_core_msgs::JointCommand::VELOCITY_MODE;
    msg.command.resize(7);
    /*for(i=0;i<7;i++){
        msg.command[i]=joint_vel(i,0);
    }*/
    msg.command[0]=0;
    msg.command[1]=0;
    msg.command[2]=0;
    msg.command[3]=0;
    msg.command[4]=0;
    msg.command[5]=0;
    msg.command[6]=0;
    msg.names={"left_s0","left_s1","left_e0","left_e1","left_w0","left_w1","left_w2"};
    joint_pub.publish(msg);
    //ros::Duration(1).sleep();
    

    
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
