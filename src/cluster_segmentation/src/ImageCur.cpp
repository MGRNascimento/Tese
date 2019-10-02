#include <ros/ros.h>
#include <vector>
#include <stdexcept>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <boost/format.hpp>

class ImageCur {

public:

    explicit ImageCur(ros::NodeHandle nh) : m_nh(nh)  {

        // define the subscriber and publisher
        m_sub = m_nh.subscribe ("/cameras/left_hand_camera/image", 1, &ImageCur::rePublish, this);
        m_pub = m_nh.advertise<sensor_msgs::Image> ("/obj_recognition/image_cur",1);
        
    }

private:

    ros::NodeHandle m_nh;
    ros::Subscriber m_sub;
    ros::Publisher m_pub;
    
    void rePublish (const sensor_msgs::Image& src);

};

void ImageCur::rePublish (const sensor_msgs::Image& src){

    m_pub.publish(src);
    //m_sub.shutdown();
    printf("Sent current image (%d, %d)\n",src.height, src.width);
    //ros::shutdown();
    ros::Duration(0.5).sleep();

    //return;
}

int main (int argc, char** argv)
{
    // Initialize ROS
    ros::init (argc, argv, "ImageCur");
    ros::NodeHandle nh;

    ImageCur segs(nh);

    while(ros::ok())
        ros::spin ();

}