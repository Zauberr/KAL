;; Auto-generated. Do not edit!


(when (boundp 'automated_driving_msgs::AdditionalHeaderForCommunication)
  (if (not (find-package "AUTOMATED_DRIVING_MSGS"))
    (make-package "AUTOMATED_DRIVING_MSGS"))
  (shadow 'AdditionalHeaderForCommunication (find-package "AUTOMATED_DRIVING_MSGS")))
(unless (find-package "AUTOMATED_DRIVING_MSGS::ADDITIONALHEADERFORCOMMUNICATION")
  (make-package "AUTOMATED_DRIVING_MSGS::ADDITIONALHEADERFORCOMMUNICATION"))

(in-package "ROS")
;;//! \htmlinclude AdditionalHeaderForCommunication.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass automated_driving_msgs::AdditionalHeaderForCommunication
  :super ros::object
  :slots (_sender_id _sender_pose ))

(defmethod automated_driving_msgs::AdditionalHeaderForCommunication
  (:init
   (&key
    ((:sender_id __sender_id) 0)
    ((:sender_pose __sender_pose) (instance geometry_msgs::PoseWithCovarianceStamped :init))
    )
   (send-super :init)
   (setq _sender_id (round __sender_id))
   (setq _sender_pose __sender_pose)
   self)
  (:sender_id
   (&optional __sender_id)
   (if __sender_id (setq _sender_id __sender_id)) _sender_id)
  (:sender_pose
   (&rest __sender_pose)
   (if (keywordp (car __sender_pose))
       (send* _sender_pose __sender_pose)
     (progn
       (if __sender_pose (setq _sender_pose (car __sender_pose)))
       _sender_pose)))
  (:serialization-length
   ()
   (+
    ;; uint32 _sender_id
    4
    ;; geometry_msgs/PoseWithCovarianceStamped _sender_pose
    (send _sender_pose :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _sender_id
       (write-long _sender_id s)
     ;; geometry_msgs/PoseWithCovarianceStamped _sender_pose
       (send _sender_pose :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _sender_id
     (setq _sender_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; geometry_msgs/PoseWithCovarianceStamped _sender_pose
     (send _sender_pose :deserialize buf ptr-) (incf ptr- (send _sender_pose :serialization-length))
   ;;
   self)
  )

(setf (get automated_driving_msgs::AdditionalHeaderForCommunication :md5sum-) "7ad8d6ff3241e85a418314f4bfc67b90")
(setf (get automated_driving_msgs::AdditionalHeaderForCommunication :datatype-) "automated_driving_msgs/AdditionalHeaderForCommunication")
(setf (get automated_driving_msgs::AdditionalHeaderForCommunication :definition-)
      "# Additional header for a communication message
# License: BSD

# ObjectID of the sender
uint32 sender_id

# Position of the sender at time of sending the message
geometry_msgs/PoseWithCovarianceStamped sender_pose

================================================================================
MSG: geometry_msgs/PoseWithCovarianceStamped
# This expresses an estimated pose with a reference coordinate frame and timestamp

Header header
PoseWithCovariance pose

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
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

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



(provide :automated_driving_msgs/AdditionalHeaderForCommunication "7ad8d6ff3241e85a418314f4bfc67b90")


