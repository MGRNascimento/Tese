#include <ros/ros.h>
#include <vector>
#include <stdexcept>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <boost/format.hpp>

class ImageRef {

public:

    explicit ImageRef(ros::NodeHandle nh) : m_nh(nh)  {

        // define the subscriber and publisher
        m_sub = m_nh.subscribe ("/cameras/left_hand_camera/image", 1, &ImageRef::rePublish, this);
        m_pub = m_nh.advertise<sensor_msgs::Image> ("/obj_recognition/image_ref",1);
        
    }

private:

    ros::NodeHandle m_nh;
    ros::Subscriber m_sub;
    ros::Publisher m_pub;
    
    void rePublish (const sensor_msgs::Image& src);

};

void ImageRef::rePublish (const sensor_msgs::Image& src){

    m_pub.publish(src);
    m_sub.shutdown();
    printf("Sent reference image (%d, %d) %s\n",src.height, src.width, src.header.frame_id);
    ros::Duration(0.5).sleep();

    ros::shutdown();
    
    return;
}

int main (int argc, char** argv)
{
    // Initialize ROS
    ros::init (argc, argv, "ImageRef");
    ros::NodeHandle nh;

    ImageRef segs(nh);

    while(ros::ok())
        ros::spin ();

}