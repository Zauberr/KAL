;; Auto-generated. Do not edit!


(when (boundp 'automated_driving_msgs::DeltaPoseWithDeltaTime)
  (if (not (find-package "AUTOMATED_DRIVING_MSGS"))
    (make-package "AUTOMATED_DRIVING_MSGS"))
  (shadow 'DeltaPoseWithDeltaTime (find-package "AUTOMATED_DRIVING_MSGS")))
(unless (find-package "AUTOMATED_DRIVING_MSGS::DELTAPOSEWITHDELTATIME")
  (make-package "AUTOMATED_DRIVING_MSGS::DELTAPOSEWITHDELTATIME"))

(in-package "ROS")
;;//! \htmlinclude DeltaPoseWithDeltaTime.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass automated_driving_msgs::DeltaPoseWithDeltaTime
  :super ros::object
  :slots (_delta_time _delta_pose ))

(defmethod automated_driving_msgs::DeltaPoseWithDeltaTime
  (:init
   (&key
    ((:delta_time __delta_time) (instance ros::time :init))
    ((:delta_pose __delta_pose) (instance geometry_msgs::Pose :init))
    )
   (send-super :init)
   (setq _delta_time __delta_time)
   (setq _delta_pose __delta_pose)
   self)
  (:delta_time
   (&optional __delta_time)
   (if __delta_time (setq _delta_time __delta_time)) _delta_time)
  (:delta_pose
   (&rest __delta_pose)
   (if (keywordp (car __delta_pose))
       (send* _delta_pose __delta_pose)
     (progn
       (if __delta_pose (setq _delta_pose (car __delta_pose)))
       _delta_pose)))
  (:serialization-length
   ()
   (+
    ;; duration _delta_time
    8
    ;; geometry_msgs/Pose _delta_pose
    (send _delta_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; duration _delta_time
       (write-long (send _delta_time :sec) s) (write-long (send _delta_time :nsec) s)
     ;; geometry_msgs/Pose _delta_pose
       (send _delta_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; duration _delta_time
     (send _delta_time :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _delta_time :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/Pose _delta_pose
     (send _delta_pose :deserialize buf ptr-) (incf ptr- (send _delta_pose :serialization-length))
   ;;
   self)
  )

(setf (get automated_driving_msgs::DeltaPoseWithDeltaTime :md5sum-) "bd491e1e86421bdc854fe78f7237bf17")
(setf (get automated_driving_msgs::DeltaPoseWithDeltaTime :datatype-) "automated_driving_msgs/DeltaPoseWithDeltaTime")
(setf (get automated_driving_msgs::DeltaPoseWithDeltaTime :definition-)
      "# Message for a desired position of an object
# License: BSD

# Time Delta, after which the position is to be reached
#    For further details: http://wiki.ros.org/std_msgs
duration delta_time

# The Position Delta to be reached
#    This delta is always relative to the current position and orientation of the object
#    For further details: http://docs.ros.org/api/geometry_msgs/html/msg/Pose.html
geometry_msgs/Pose delta_pose

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :automated_driving_msgs/DeltaPoseWithDeltaTime "bd491e1e86421bdc854fe78f7237bf17")


