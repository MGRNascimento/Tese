#include <ros/ros.h>
#include <math.h>      
#include <tf/transform_broadcaster.h>
#include <vector>
#include <stdexcept>
#include <sensor_msgs/JointState.h>


class cameraTransform {

public:

    explicit cameraTransform(ros::NodeHandle nh) : m_nh(nh)  {

        // define the subscriber and publisher
        m_states=m_nh.subscribe ("/robot/joint_states", 1, &cameraTransform::jointStates,this);
        
    }

    std::vector<double> joint_pos;

private:

    ros::NodeHandle m_nh;
    ros::Subscriber m_states;
    
    
    void jointStates(const sensor_msgs::JointState& src);
    

}; // end class definition

void cameraTransform::jointStates(const sensor_msgs::JointState& src){

    joint_pos.resize(7);
    
    joint_pos[2]=src.position[3];//e_0
    joint_pos[3]=src.position[4];//e_1
    joint_pos[0]=src.position[5];//s_0
    joint_pos[1]=src.position[6];//s_1
    joint_pos[4]=src.position[7];//w_0
    joint_pos[5]=src.position[8];//w_1
    joint_pos[6]=src.position[9];//w_2

    tf::TransformBroadcaster br;
    tf::Transform transform;
    transform.setOrigin( tf::Vector3(0.0, 0.0, 0.0) );
    transform.setRotation( tf::Quaternion(cos(-joint_pos[6])/2, 0, 0, -sin(-joint_pos[6])/2) );
    br.sendTransform(tf::StampedTransform(transform, ros::Time::now(), "left_hand_camera_axis", "left_hand_camera_true_axis"));
    //ROS_INFO_STREAM("Sent Transform \n");


    return;
}

int main(int argc, char** argv){
  ros::init(argc, argv, "cameraTransform");
  ros::NodeHandle node;

  cameraTransform segs(node);

  while(ros::ok()){
        ros::spin ();
        
    }

  
  return 0;
};