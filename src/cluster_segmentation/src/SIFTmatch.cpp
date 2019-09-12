#include <ros/ros.h>
#include <vector>
#include <stdexcept>
#include <sensor_msgs/Image.h>
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

using namespace cv;
using namespace cv::xfeatures2d;
using std::cout;
using std::endl;

class SIFTmatch {

public:

    explicit SIFTmatch(ros::NodeHandle nh) : m_nh(nh)  {

        // define the subscriber and publisher
        //m_sub = m_nh.subscribe ("/cameras/head_camera/image", 1, &SIFTmatch::featureExtractor, this);
        m_ref = m_nh.subscribe ("/obj_recognition/image_ref", 1, &SIFTmatch::refConversion, this);
        m_cur= m_nh.subscribe ("/obj_recognition/image_cur", 1, &SIFTmatch::curConversion, this);
        
        
    }

private:

    ros::NodeHandle m_nh;
    ros::Subscriber m_ref, m_cur;
    Mat/*vpImage<unsigned char>*/ I_ref;
    Mat/*vpImage<unsigned char>*/ I_cur;

    void refConversion(const sensor_msgs::Image& src);
    void curConversion(const sensor_msgs::Image& src);

public:
    void featureExtractor ();
    

}; // end class definition

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
  
    printf("Reference image converted\n");
   featureExtractor();
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
    featureExtractor();
   return;
  

}

// define callback function
void SIFTmatch::featureExtractor (){  

    if ( I_ref.empty() || I_cur.empty() )
    {
        printf("Not enough images\n");
        return;
    }

    //-- Step 1: Detect the keypoints using SURF Detector, compute the descriptors
    int minHessian = 400;
    Ptr<SURF> detector = SURF::create( minHessian );

    std::vector<KeyPoint> keypoints1, keypoints2;
    Mat descriptors1, descriptors2;
    detector->detectAndCompute( I_ref, noArray(), keypoints1, descriptors1 );
    detector->detectAndCompute( I_cur, noArray(), keypoints2, descriptors2 );

    //-- Step 2: Matching descriptor vectors with a FLANN based matcher
    // Since SURF is a floating-point descriptor NORM_L2 is used

    Ptr<DescriptorMatcher> matcher = DescriptorMatcher::create(DescriptorMatcher::FLANNBASED);
    std::vector< std::vector<DMatch> > knn_matches;
    matcher->knnMatch( descriptors1, descriptors2, knn_matches, 2 );

    //-- Filter matches using the Lowe's ratio test

    const float ratio_thresh = 0.7f;
    std::vector<DMatch> good_matches;
    Mat gripper_mask=imread("/home/miguel/catkin_ws/mask/left0000.jpg",CV_LOAD_IMAGE_COLOR);
    printf("MASK SIZE: %d %d\n",gripper_mask.rows,gripper_mask.cols);
    printf("IMAGE SIZE: %d %d\n", I_ref.rows, I_ref.cols);
    
    for (size_t i = 0; i < knn_matches.size(); i++)
    {
        if (knn_matches[i][0].distance < ratio_thresh * knn_matches[i][1].distance)
        {
            //printf("(%d, %d)\n",cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.x),cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.y));
            Vec3b intensity=gripper_mask.at<Vec3b>(cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.y),cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.x));
            printf("%d %d %d\n",intensity.val[0],intensity.val[1],intensity.val[2]);
            if((gripper_mask.at<Vec3b>(cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.y),cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.x)).val[0]!=0 ||
            gripper_mask.at<Vec3b>(cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.y),cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.x)).val[1]!=0 || 
            gripper_mask.at<Vec3b>(cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.y),cvRound(keypoints1[knn_matches[i][0].queryIdx].pt.x)).val[2]!=0)){
                good_matches.push_back(knn_matches[i][0]);
            }
            
        }
    }


    //-- Draw matches
    Mat img_matches;
    drawMatches( I_ref, keypoints1, I_cur, keypoints2, good_matches, img_matches, Scalar::all(-1),
                 Scalar::all(-1), std::vector<char>(), DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS );
    //-- Show detected matches
    imshow("Good Matches", img_matches );
    waitKey(0);
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
