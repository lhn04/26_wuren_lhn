#include <ros/ros.h>
#include <turtle_control/TurtleSpeed.h>
#include <geometry_msgs/Twist.h>
class TurtleController {
private:
    ros::NodeHandle nh;
    ros::Subscriber speed_sub;
    ros::Publisher cmd_pub;
    double angular_velocity;
public:
    TurtleController() {
        // 从参数服务器获取角速度
        if (!nh.getParam("/turtle_params/angular_velocity", angular_velocity)) {
            ROS_ERROR("未找到参数 /turtle_params/angular_velocity");
            angular_velocity = 0.2;  
        }    
        speed_sub = nh.subscribe("turtle_speed", 10, &TurtleController::speedCallback, this);
        cmd_pub = nh.advertise<geometry_msgs::Twist>("turtle1/cmd_vel", 10);
        ROS_INFO("控制器已启动，角速度: %f", angular_velocity);
    }
    void speedCallback(const turtle_control::TurtleSpeed::ConstPtr& msg) {
        geometry_msgs::Twist cmd;
        cmd.linear.x = msg->linear_speed;
        cmd.angular.z = angular_velocity;
        cmd_pub.publish(cmd);
        ROS_INFO("发送控制指令: 线速度=%f, 角速度=%f", msg->linear_speed, angular_velocity);
    }
};
int main(int argc, char** argv) {
    ros::init(argc, argv, "turtle_controller");
    TurtleController controller;
    ros::spin();
    return 0;
}
