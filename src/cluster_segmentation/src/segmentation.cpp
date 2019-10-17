#include <ros/ros.h>
#include <visualization_msgs/Marker.h>
#include <visualization_msgs/MarkerArray.h>
#include <sensor_msgs/PointCloud2.h>
#include <pcl_conversions/pcl_conversions.h>
#include <pcl/point_cloud.h>
#include <pcl/point_types.h>
#include <pcl/filters/voxel_grid.h>
#include <pcl/filters/passthrough.h>
#include <pcl/ModelCoefficients.h>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/sample_consensus/method_types.h>
#include <pcl/sample_consensus/model_types.h>
#include <pcl/segmentation/sac_segmentation.h>
#include <pcl/filters/voxel_grid.h>
#include <pcl/filters/extract_indices.h>
#include <pcl/kdtree/kdtree.h>
#include <pcl/segmentation/extract_clusters.h>
#include <obj_recognition/SegmentedClustersArray.h>
#include <pcl/features/moment_of_inertia_estimation.h>
#include <vector>
#include <pcl/io/pcd_io.h>
#include <pcl/point_types.h>
#include <pcl/visualization/cloud_viewer.h>
#include <boost/thread/thread.hpp>
#include <tf/transform_listener.h>
//#include <obj_recognition/CollisionObjects.h>


class segmentation {

public:

    explicit segmentation(ros::NodeHandle nh) : m_nh(nh)  {

        // define the subscriber and publisher
        m_sub = m_nh.subscribe ("/obj_recognition/point_cloud", 1, &segmentation::cloud_cb, this);
        m_clusterPub = m_nh.advertise<obj_recognition::SegmentedClustersArray> ("/obj_recognition/pcl_clusters",1);
        pcl_pub_ = m_nh.advertise<sensor_msgs::PointCloud2>("/obj_recognition/segmented_clusters", 1);
        table_pub = m_nh.advertise<sensor_msgs::PointCloud2>("/obj_recognition/table", 1);
        /*marker_pub = m_nh.advertise<visualization_msgs::MarkerArray>("visualization_marker_array", 1);*/
        marker_pub = m_nh.advertise<visualization_msgs::Marker>("visualization_marker", 100);
        coll_obj_pub=m_nh.advertise<visualization_msgs::MarkerArray>("/obj_recognition/collision_objects",100);

    }

private:

    ros::NodeHandle m_nh;
    ros::Publisher m_pub;
    ros::Subscriber m_sub;
    ros::Publisher m_clusterPub;
    ros::Publisher pcl_pub_,table_pub;
    ros::Publisher marker_pub/*, line_pub*/;
    ros::Publisher coll_obj_pub;

    void cloud_cb(const sensor_msgs::PointCloud2ConstPtr& cloud_msg);
    /*void*/visualization_msgs::Marker bounding_box(pcl::PointCloud<pcl::PointXYZRGB> cloudrgb, int aux);
    visualization_msgs::Marker rightArm(int aux);
    visualization_msgs::Marker leftArm(int aux);
    bool checkCylinder(geometry_msgs::Point pt1,geometry_msgs::Point pt2, float lengthsq, float radius_sq, pcl::PointXYZRGB testpt);


}; // end class definition

// define callback function
void segmentation::cloud_cb (const sensor_msgs::PointCloud2ConstPtr& cloud_msg)
{

    ROS_INFO("Received cloud_msg");

    // Container for original & filtered data
    pcl::PCLPointCloud2* cloud = new pcl::PCLPointCloud2;
    pcl::PCLPointCloud2ConstPtr cloudPtr(cloud);
    pcl::PCLPointCloud2* cloud_filtered = new pcl::PCLPointCloud2;
    pcl::PCLPointCloud2Ptr cloudFilteredPtr (cloud_filtered);
    int i;
    float max_z=-1000.0;
    


    // Convert to PCL data type
    pcl_conversions::toPCL(*cloud_msg, *cloud);


    // Perform voxel grid downsampling filtering
    pcl::VoxelGrid<pcl::PCLPointCloud2> sor;
    sor.setInputCloud (cloudPtr);
    sor.setLeafSize (0.01, 0.01, 0.01);
    sor.filter (*cloudFilteredPtr);


    pcl::PointCloud<pcl::PointXYZRGB> *xyz_cloud = new pcl::PointCloud<pcl::PointXYZRGB>;
    pcl::PointCloud<pcl::PointXYZRGB>::Ptr xyzCloudPtr (xyz_cloud); // need a boost shared pointer for pcl function inputs

    // convert the pcl::PointCloud2 tpye to pcl::PointCloud<pcl::PointXYZRGB>
    pcl::fromPCLPointCloud2(*cloudFilteredPtr, *xyzCloudPtr);


    //perform passthrough filtering to remove table leg

    // create a pcl object to hold the passthrough filtered results
    pcl::PointCloud<pcl::PointXYZRGB> *xyz_cloud_filtered = new pcl::PointCloud<pcl::PointXYZRGB>;
    pcl::PointCloud<pcl::PointXYZRGB>::Ptr xyzCloudPtrFiltered (xyz_cloud_filtered);

    // Create the filtering object
    pcl::PassThrough<pcl::PointXYZRGB> pass;
    pass.setInputCloud (xyzCloudPtr);
    pass.setFilterFieldName ("z");
    pass.setFilterLimits (.5, 1.1);
    //pass.setFilterLimitsNegative (true);
    pass.filter (*xyzCloudPtrFiltered);



    // create a pcl object to hold the ransac filtered results
    pcl::PointCloud<pcl::PointXYZRGB> *xyz_cloud_ransac_filtered = new pcl::PointCloud<pcl::PointXYZRGB>;
    pcl::PointCloud<pcl::PointXYZRGB>::Ptr xyzCloudPtrRansacFiltered (xyz_cloud_ransac_filtered);


    // perform ransac planar filtration to remove table top
    pcl::ModelCoefficients::Ptr coefficients (new pcl::ModelCoefficients);
    pcl::PointIndices::Ptr inliers (new pcl::PointIndices);
    // Create the segmentation object
    pcl::SACSegmentation<pcl::PointXYZRGB> seg1;
    // Optional
    seg1.setOptimizeCoefficients (true);
    // Mandatory
    seg1.setModelType (pcl::SACMODEL_PLANE);
    seg1.setMethodType (pcl::SAC_RANSAC);
    seg1.setDistanceThreshold (0.01);

    seg1.setInputCloud (xyzCloudPtrFiltered);
    seg1.segment (*inliers, *coefficients);

    /*for(i=0;i<inliers->indices.size();i++){
        if(xyzCloudPtrFiltered->points[inliers->indices[i]].z>max_z)
            max_z=xyzCloudPtrFiltered->points[inliers->indices[i]].z;
    }
    printf("MAX Z:%f\n",max_z);*/

    // Create the filtering object
    pcl::ExtractIndices<pcl::PointXYZRGB> extract;

    extract.setInputCloud (xyzCloudPtrFiltered);
    extract.setIndices (inliers);
    extract.setNegative (true);
    extract.filter (*xyzCloudPtrRansacFiltered);



    // perform euclidean cluster segmentation to seporate individual objects

    // Create the KdTree object for the search method of the extraction
    pcl::search::KdTree<pcl::PointXYZRGB>::Ptr tree (new pcl::search::KdTree<pcl::PointXYZRGB>);
    tree->setInputCloud (xyzCloudPtrRansacFiltered);

    // create the extraction object for the clusters
    std::vector<pcl::PointIndices> cluster_indices;
    
    pcl::EuclideanClusterExtraction<pcl::PointXYZRGB> ec;
    // specify euclidean cluster parameters
    ec.setClusterTolerance (0.02); // 2cm
    ec.setMinClusterSize (100);
    ec.setMaxClusterSize (25000);
    ec.setSearchMethod (tree);
    ec.setInputCloud (xyzCloudPtrRansacFiltered);
    // exctract the indices pertaining to each cluster and store in a vector of pcl::PointIndices
    ec.extract (cluster_indices);
    int size=cluster_indices.size();

    pcl::ExtractIndices<pcl::PointXYZRGB> extractObjects;

    extractObjects.setInputCloud (xyzCloudPtrFiltered);
    extractObjects.setIndices (inliers);
    extractObjects.setNegative (false);
    extractObjects.filter (*xyzCloudPtrFiltered);

    pcl::PCLPointCloud2 outputPCLObjects;

    pcl::toPCLPointCloud2(*xyzCloudPtrFiltered, outputPCLObjects);
    outputPCLObjects.header.frame_id = "world";
    table_pub.publish(outputPCLObjects);

    /*pcl::PointIndices::Ptr fInliers (new pcl::PointIndices);
    for(i=0;i<cluster_indices.size();i++){
        fInliers=cluster_indices[i];
    }
    
    pcl::ExtractIndices<pcl::PointXYZ> extractObjects ;
    extractObjects.setInputCloud (xyzCloudPtrFiltered);
    extractObjects.setIndices (fInliers);
    extractObjects.setNegative (true); 
    extractObjects.filter (*xyzCloudPtrFiltered);*/

    // declare an instance of the SegmentedClustersArray message
    obj_recognition::SegmentedClustersArray CloudClusters;

    // declare the output variable instances
    sensor_msgs::PointCloud2 output;
    pcl::PCLPointCloud2 outputPCL;
    pcl::PointCloud<pcl::PointXYZRGB> concatenatedClusters;
    std::vector<pcl::PointCloud<pcl::PointXYZRGB> > clusters(size);
    visualization_msgs::MarkerArray marker;
    
    marker.markers.resize(size+1);
    int aux=0;

    visualization_msgs::Marker rightLinks, leftLinks;

    rightLinks=rightArm(aux);
    aux++;
    leftLinks=leftArm(aux);
    aux++;
    int isRobot=0;

    // here, cluster_indices is a vector of indices for each cluster. iterate through each indices object to work with them seporately
    for (std::vector<pcl::PointIndices>::const_iterator it = cluster_indices.begin (); it != cluster_indices.end (); ++it)
    {

        // create a new clusterData message object
        //obj_recognition::ClusterData clusterData;

        // create a pcl object to hold the extracted cluster

        for (std::vector<int>::const_iterator p_it = it->indices.begin (); p_it != it->indices.end (); ++p_it){
            for(i=1;i<9;i++){
                //printf("\n(%f %f %f) - (%f %f %f) -> %f\n",rightLinks.points[i].x,rightLinks.points[i].y,rightLinks.points[i].z,rightLinks.points[i-1].x,rightLinks.points[i-1].y,rightLinks.points[i-1].z,pow(rightLinks.points[i].x-rightLinks.points[i-1].x,2)+pow(rightLinks.points[i].y-rightLinks.points[i-1].y,2)+pow(rightLinks.points[i].z-rightLinks.points[i-1].z,2));
                if(checkCylinder(rightLinks.points[i-1], rightLinks.points[i], 
                pow(rightLinks.points[i].x-rightLinks.points[i-1].x,2)+pow(rightLinks.points[i].y-rightLinks.points[i-1].y,2)+pow(rightLinks.points[i].z-rightLinks.points[i-1].z,2), 
                pow(0.1,2), xyzCloudPtrRansacFiltered->points[*p_it]) || 
                checkCylinder(leftLinks.points[i-1], leftLinks.points[i], 
                pow(leftLinks.points[i].x-leftLinks.points[i-1].x,2)+pow(leftLinks.points[i].y-leftLinks.points[i-1].y,2)+pow(leftLinks.points[i].z-leftLinks.points[i-1].z,2), 
                pow(0.1,2), xyzCloudPtrRansacFiltered->points[*p_it])){
                    isRobot=1;
                    break;
                }
            }
            if(isRobot==1)
                break;
        }
        if(isRobot==1){
            isRobot=0;
            continue;
        }

        pcl::PointCloud<pcl::PointXYZRGB> *cluster = new pcl::PointCloud<pcl::PointXYZRGB>;
        pcl::PointCloud<pcl::PointXYZRGB>::Ptr clusterPtr (cluster);
       
        // now we are in a vector of indices pertaining to a single cluster.
        // Assign each point corresponding to this cluster in xyzCloudPtrPassthroughFiltered a specific color for identification purposes
        for (std::vector<int>::const_iterator pit = it->indices.begin (); pit != it->indices.end (); ++pit)
        {
            clusterPtr->points.push_back(xyzCloudPtrRansacFiltered->points[*pit]);
        }
        clusters[aux-2]=*clusterPtr;
        
        // log the position of the cluster
        //clusterData.position[0] = (*cloudPtr).data[0];
        //clusterData.position[1] = (*cloudPtr).points.back().y;
        //clusterData.position[2] = (*cloudPtr).points.back().z;
        //std::string info_string = string(cloudPtr->points.back().x);
        //printf(clusterData.position[0]);
        marker.markers[aux-2]=bounding_box(*clusterPtr, aux);

        aux++;
        // convert to pcl::PCLPointCloud2
        pcl::toPCLPointCloud2(*clusterPtr, outputPCL);

        // Convert to ROS data type
        pcl_conversions::fromPCL(outputPCL, output);

        concatenatedClusters += *clusterPtr;

        // add the cluster to the array message
        //clusterData.cluster = output;
        CloudClusters.clusters.push_back(output);

    }
    marker.markers[aux-2]=bounding_box(*xyzCloudPtrFiltered,aux);
    aux++;
    //bounding_box(concatenatedClusters, marker_pub);
    pcl::toPCLPointCloud2(concatenatedClusters, outputPCL);
    outputPCL.header.frame_id = "world";
    pcl_pub_.publish(outputPCL);

    /*for(int i=0; i<size; i++)
        printf("Cloud %d: %f %f %f %f %f %f\n",i, marker.markers[i].scale.x, marker.markers[i].scale.y, marker.markers[i].scale.z, marker.markers[i].pose.position.x, marker.markers[i].pose.position.y, marker.markers[i].pose.position.z);
    */

    

   /*for(i=0;i<24;i++){
       printf("%f %f %f\n",line.points[i].x,line.points[i].y,line.points[i].z);
   }*/
    //line_pub.publish(line);
    coll_obj_pub.publish(marker);
    // publish the clusters
    m_clusterPub.publish(CloudClusters);

    marker_pub.publish(rightLinks);
    
    marker_pub.publish(leftLinks);
    //ros::Duration(10).sleep();
}


visualization_msgs::Marker segmentation::bounding_box(pcl::PointCloud<pcl::PointXYZRGB> cloudrgb, int aux){
    
  pcl::PointCloud<pcl::PointXYZ> *cloudxyz= new pcl::PointCloud<pcl::PointXYZ>;
  pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (cloudxyz);
  copyPointCloud(cloudrgb, *cloud);
  //pcl::PointCloud<pcl::PointXYZ>::Ptr cloud (cloud_xyz);
  pcl::MomentOfInertiaEstimation <pcl::PointXYZ> feature_extractor;
  feature_extractor.setInputCloud (cloud);
  feature_extractor.compute ();

  std::vector <float> moment_of_inertia;
  std::vector <float> eccentricity;
  pcl::PointXYZ min_point_AABB;
  pcl::PointXYZ max_point_AABB;
  pcl::PointXYZ min_point_OBB;
  pcl::PointXYZ max_point_OBB;
  pcl::PointXYZ position_OBB;
  Eigen::Matrix3f rotational_matrix_OBB;
  float major_value, middle_value, minor_value;
  Eigen::Vector3f major_vector, middle_vector, minor_vector;
  Eigen::Vector3f mass_center;

  feature_extractor.getMomentOfInertia (moment_of_inertia);
  feature_extractor.getEccentricity (eccentricity);
  feature_extractor.getAABB (min_point_AABB, max_point_AABB);
  feature_extractor.getOBB (min_point_OBB, max_point_OBB, position_OBB, rotational_matrix_OBB);
  feature_extractor.getEigenValues (major_value, middle_value, minor_value);
  feature_extractor.getEigenVectors (major_vector, middle_vector, minor_vector);
  feature_extractor.getMassCenter (mass_center);

    visualization_msgs::Marker marker;
    // Set the frame ID and timestamp.  See the TF tutorials for information on these.
    marker.header.frame_id = "world";
    marker.header.stamp = ros::Time::now();

    // Set the namespace and id for this marker.  This serves to create a unique ID
    // Any marker sent with the same namespace and id will overwrite the old one
    marker.ns = "basic_shapes";
    marker.id = aux;

    // Set the marker type.  Initially this is CUBE, and cycles between that and SPHERE, ARROW, and CYLINDER
    marker.type = visualization_msgs::Marker::CUBE;

    // Set the marker action.  Options are ADD, DELETE, and new in ROS Indigo: 3 (DELETEALL)
    marker.action = visualization_msgs::Marker::ADD;

    // Set the pose of the marker.  This is a full 6DOF pose relative to the frame/time specified in the header
    marker.pose.position.x=position_OBB.x;
    marker.pose.position.y=position_OBB.y;
    marker.pose.position.z=position_OBB.z;
    Eigen::Quaternionf quat (rotational_matrix_OBB);
    marker.pose.orientation.x=quat.x();
    marker.pose.orientation.y=quat.y();
    marker.pose.orientation.z=quat.z();
    marker.pose.orientation.w=quat.w();

    // Set the scale of the marker -- 1x1x1 here means 1m on a side
    marker.scale.x = max_point_OBB.x - min_point_OBB.x+0.03;
    marker.scale.y = max_point_OBB.y - min_point_OBB.y+0.03;
    marker.scale.z = max_point_OBB.z - min_point_OBB.z+0.03;

    // Set the color -- be sure to set alpha to something non-zero!
    marker.color.r = 0.0f;
    marker.color.g = 1.0f;
    marker.color.b = 0.0f;
    marker.color.a = 1.0;

    return marker;

}

visualization_msgs::Marker segmentation::rightArm(int aux){

    tf::TransformListener listener;
    int i;

    tf::StampedTransform t0,t1,t2,t3,t4,t5,t7,t8,t9;
    try{
        listener.waitForTransform("world", "right_arm_mount", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "right_arm_mount", ros::Time(0), t0);

        listener.waitForTransform("world", "right_upper_shoulder", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "right_upper_shoulder", ros::Time(0), t1);

        listener.waitForTransform("world", "right_lower_shoulder", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "right_lower_shoulder", ros::Time(0), t2);

        listener.waitForTransform("world", "right_upper_elbow", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "right_upper_elbow", ros::Time(0), t3);

        listener.waitForTransform("world", "right_lower_elbow", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "right_lower_elbow", ros::Time(0), t4);

        listener.waitForTransform("world", "right_upper_forearm", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "right_upper_forearm", ros::Time(0), t5);

        listener.waitForTransform("world", "right_lower_forearm", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "right_lower_forearm", ros::Time(0), t7);

        listener.waitForTransform("world", "right_wrist", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "right_wrist", ros::Time(0), t8);

        listener.waitForTransform("world", "right_hand", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "right_hand", ros::Time(0), t9);
        
    }
    catch (tf::TransformException ex){
        ROS_ERROR("%s",ex.what());
        ros::Duration(1.0).sleep();
    }

    visualization_msgs::Marker line_strip;
    
    line_strip.color.b = 1.0;
    line_strip.color.a = 1.0;
    
    
    line_strip.header.frame_id = "world";
    line_strip.header.stamp= ros::Time::now();
    line_strip.ns = "lines";
    line_strip.action = visualization_msgs::Marker::ADD;
    line_strip.pose.orientation.w = 1.0;

    line_strip.id = aux;
    line_strip.type = visualization_msgs::Marker::LINE_STRIP;
    line_strip.scale.x = 0.02;
    geometry_msgs::Point p;

    p.x=t0.getOrigin().x();
    p.y=t0.getOrigin().y();
    p.z=t0.getOrigin().z();
    line_strip.points.push_back(p);
    
   

    p.x=t1.getOrigin().x();
    p.y=t1.getOrigin().y();
    p.z=t1.getOrigin().z();
    line_strip.points.push_back(p);

    p.x=t2.getOrigin().x();
    p.y=t2.getOrigin().y();
    p.z=t2.getOrigin().z();
    line_strip.points.push_back(p);
   

    p.x=t3.getOrigin().x();
    p.y=t3.getOrigin().y();
    p.z=t3.getOrigin().z();
    line_strip.points.push_back(p);
   

    p.x=t4.getOrigin().x();
    p.y=t4.getOrigin().y();
    p.z=t4.getOrigin().z();
    line_strip.points.push_back(p);
   

    p.x=t5.getOrigin().x();
    p.y=t5.getOrigin().y();
    p.z=t5.getOrigin().z();
    line_strip.points.push_back(p);

    
    p.x=t7.getOrigin().x();
    p.y=t7.getOrigin().y();
    p.z=t7.getOrigin().z();
    line_strip.points.push_back(p);
   
    
    p.x=t8.getOrigin().x();
    p.y=t8.getOrigin().y();
    p.z=t8.getOrigin().z();
    line_strip.points.push_back(p);
   
    
    p.x=t9.getOrigin().x();
    p.y=t9.getOrigin().y();
    p.z=t9.getOrigin().z();
    line_strip.points.push_back(p);
   
    
    return line_strip;
}



visualization_msgs::Marker segmentation::leftArm(int aux){

    tf::TransformListener listener;
    int i;

    tf::StampedTransform t10,t11,t12,t13,t14,t15,t17,t18,t19;
    try{

        listener.waitForTransform("world", "left_arm_mount", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "left_arm_mount", ros::Time(0), t10);

        listener.waitForTransform("world", "left_upper_shoulder", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "left_upper_shoulder", ros::Time(0), t11);
        
        listener.waitForTransform("world", "left_lower_shoulder", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "left_lower_shoulder", ros::Time(0), t12);

        listener.waitForTransform("world", "left_upper_elbow", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "left_upper_elbow", ros::Time(0), t13);

        listener.waitForTransform("world", "left_lower_elbow", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "left_lower_elbow", ros::Time(0), t14);

        listener.waitForTransform("world", "left_upper_forearm", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "left_upper_forearm", ros::Time(0), t15);

        listener.waitForTransform("world", "left_lower_forearm", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "left_lower_forearm", ros::Time(0), t17);

        listener.waitForTransform("world", "left_wrist", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "left_wrist", ros::Time(0), t18);

        listener.waitForTransform("world", "left_hand", ros::Time::now(), ros::Duration(3.0));
        listener.lookupTransform("world", "left_hand", ros::Time(0), t19);
        
    }
    catch (tf::TransformException ex){
        ROS_ERROR("%s",ex.what());
        ros::Duration(1.0).sleep();
    }

    visualization_msgs::Marker line_strip;
    line_strip.color.b = 1.0;
    line_strip.color.a = 1.0;
    
    line_strip.header.frame_id = "world";
    line_strip.header.stamp= ros::Time::now();
    line_strip.ns = "lines";
    line_strip.action = visualization_msgs::Marker::ADD;
    line_strip.pose.orientation.w = 1.0;

    line_strip.id = aux;
    line_strip.type = visualization_msgs::Marker::LINE_STRIP;
    line_strip.scale.x = 0.02;
    geometry_msgs::Point p;
   
    
    p.x=t10.getOrigin().x();
    p.y=t10.getOrigin().y();
    p.z=t10.getOrigin().z();
    line_strip.points.push_back(p);
   
    
    p.x=t11.getOrigin().x();
    p.y=t11.getOrigin().y();
    p.z=t11.getOrigin().z();
    line_strip.points.push_back(p);
   
    
    p.x=t12.getOrigin().x();
    p.y=t12.getOrigin().y();
    p.z=t12.getOrigin().z();
    line_strip.points.push_back(p);
   
    
    p.x=t13.getOrigin().x();
    p.y=t13.getOrigin().y();
    p.z=t13.getOrigin().z();
    line_strip.points.push_back(p);
   
    
    p.x=t14.getOrigin().x();
    p.y=t14.getOrigin().y();
    p.z=t14.getOrigin().z();
    line_strip.points.push_back(p);
   
    
    p.x=t15.getOrigin().x();
    p.y=t15.getOrigin().y();
    p.z=t15.getOrigin().z();
    line_strip.points.push_back(p);
   
    
    p.x=t17.getOrigin().x();
    p.y=t17.getOrigin().y();
    p.z=t17.getOrigin().z();
    line_strip.points.push_back(p);
   
    
    p.x=t18.getOrigin().x();
    p.y=t18.getOrigin().y();
    p.z=t18.getOrigin().z();
    line_strip.points.push_back(p);
   
    
    p.x=t19.getOrigin().x();
    p.y=t19.getOrigin().y();
    p.z=t19.getOrigin().z();
    line_strip.points.push_back(p);
   
    
    return line_strip;
}


bool segmentation::checkCylinder(geometry_msgs::Point pt1,geometry_msgs::Point pt2, float lengthsq, float radius_sq, pcl::PointXYZRGB testpt){
	float dx, dy, dz;	// vector d  from line segment point 1 to point 2
	float pdx, pdy, pdz;	// vector pd from point 1 to test point
	float dot, dsq;

	dx = pt2.x - pt1.x;	// translate so pt1 is origin.  Make vector from
	dy = pt2.y - pt1.y;     // pt1 to pt2.  Need for this is easily eliminated
	dz = pt2.z - pt1.z;

	pdx = testpt.x - pt1.x;		// vector from pt1 to test point.
	pdy = testpt.y - pt1.y;
	pdz = testpt.z - pt1.z;

	// Dot the d and pd vectors to see if point lies behind the 
	// cylinder cap at pt1.x, pt1.y, pt1.z

	dot = pdx * dx + pdy * dy + pdz * dz;

	// If dot is less than zero the point is behind the pt1 cap.
	// If greater than the cylinder axis line segment length squared
	// then the point is outside the other end cap at pt2.

	if( dot < 0.0f || dot > lengthsq )
	{
		return(false);
	}
	else 
	{
		// Point lies within the parallel caps, so find
		// distance squared from point to line, using the fact that sin^2 + cos^2 = 1
		// the dot = cos() * |d||pd|, and cross*cross = sin^2 * |d|^2 * |pd|^2
		// Carefull: '*' means mult for scalars and dotproduct for vectors
		// In short, where dist is pt distance to cyl axis: 
		// dist = sin( pd to d ) * |pd|
		// distsq = dsq = (1 - cos^2( pd to d)) * |pd|^2
		// dsq = ( 1 - (pd * d)^2 / (|pd|^2 * |d|^2) ) * |pd|^2
		// dsq = pd * pd - dot * dot / lengthsq
		//  where lengthsq is d*d or |d|^2 that is passed into this function 

		// distance squared to the cylinder axis:

		dsq = (pdx*pdx + pdy*pdy + pdz*pdz) - dot*dot/lengthsq;

		if( dsq > radius_sq )
		{
			return(false);
		}
		else
		{
			return(true);		// return distance squared to axis
		}
	}
}



int main (int argc, char** argv)
{
    // Initialize ROS
    ros::init (argc, argv, "segmentation");
    ros::NodeHandle nh;

    segmentation segs(nh);

    while(ros::ok())
        ros::spin ();

}
