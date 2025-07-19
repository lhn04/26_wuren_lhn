#!/usr/bin/env python3
import rospy
from turtle_control.msg import TurtleSpeed
def publish_speed():
    rospy.init_node('turtle_speed_publisher', anonymous=True)
    pub = rospy.Publisher('turtle_speed', TurtleSpeed, queue_size=10)
    rate = rospy.Rate(10)  
    while not rospy.is_shutdown():
        msg = TurtleSpeed()
        msg.linear_speed = 0.5
        msg.angular_speed = 0.3
        pub.publish(msg)
        rospy.loginfo(f"发布速度: 线速度={msg.linear_speed}, 角速度={msg.angular_speed}")
        rate.sleep()
if __name__ == '__main__':
    try:
        publish_speed()
    except rospy.ROSInterruptException:
        pass
