;; Auto-generated. Do not edit!


(when (boundp 'automated_driving_msgs::DeltaTrajectory)
  (if (not (find-package "AUTOMATED_DRIVING_MSGS"))
    (make-package "AUTOMATED_DRIVING_MSGS"))
  (shadow 'DeltaTrajectory (find-package "AUTOMATED_DRIVING_MSGS")))
(unless (find-package "AUTOMATED_DRIVING_MSGS::DELTATRAJECTORY")
  (make-package "AUTOMATED_DRIVING_MSGS::DELTATRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude DeltaTrajectory.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass automated_driving_msgs::DeltaTrajectory
  :super ros::object
  :slots (_header _delta_poses_with_delta_time ))

(defmethod automated_driving_msgs::DeltaTrajectory
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:delta_poses_with_delta_time __delta_poses_with_delta_time) (let (r) (dotimes (i 0) (push (instance automated_driving_msgs::DeltaPoseWithDeltaTime :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _delta_poses_with_delta_time __delta_poses_with_delta_time)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:delta_poses_with_delta_time
   (&rest __delta_poses_with_delta_time)
   (if (keywordp (car __delta_poses_with_delta_time))
       (send* _delta_poses_with_delta_time __delta_poses_with_delta_time)
     (progn
       (if __delta_poses_with_delta_time (setq _delta_poses_with_delta_time (car __delta_poses_with_delta_time)))
       _delta_poses_with_delta_time)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; automated_driving_msgs/DeltaPoseWithDeltaTime[] _delta_poses_with_delta_time
    (apply #'+ (send-all _delta_poses_with_delta_time :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; automated_driving_msgs/DeltaPoseWithDeltaTime[] _delta_poses_with_delta_time
     (write-long (length _delta_poses_with_delta_time) s)
     (dolist (elem _delta_poses_with_delta_time)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; automated_driving_msgs/DeltaPoseWithDeltaTime[] _delta_poses_with_delta_time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _delta_poses_with_delta_time (let (r) (dotimes (i n) (push (instance automated_driving_msgs::DeltaPoseWithDeltaTime :init) r)) r))
     (dolist (elem- _delta_poses_with_delta_time)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get automated_driving_msgs::DeltaTrajectory :md5sum-) "326b401761a7fb398dc1c64746db2f8e")
(setf (get automated_driving_msgs::DeltaTrajectory :datatype-) "automated_driving_msgs/DeltaTrajectory")
(setf (get automated_driving_msgs::DeltaTrajectory :definition-)
      "# Message for a desired motion of an object expressed by an array of desired positions
# License: BSD

# Header
Header header

# Array of desired delta positions with their respective delta time, after which the position is to be reached
DeltaPoseWithDeltaTime[] delta_poses_with_delta_time

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: automated_driving_msgs/DeltaPoseWithDeltaTime
# Message for a desired position of an object
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



(provide :automated_driving_msgs/DeltaTrajectory "326b401761a7fb398dc1c64746db2f8e")


