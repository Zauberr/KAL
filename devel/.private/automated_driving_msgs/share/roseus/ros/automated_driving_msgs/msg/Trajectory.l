;; Auto-generated. Do not edit!


(when (boundp 'automated_driving_msgs::Trajectory)
  (if (not (find-package "AUTOMATED_DRIVING_MSGS"))
    (make-package "AUTOMATED_DRIVING_MSGS"))
  (shadow 'Trajectory (find-package "AUTOMATED_DRIVING_MSGS")))
(unless (find-package "AUTOMATED_DRIVING_MSGS::TRAJECTORY")
  (make-package "AUTOMATED_DRIVING_MSGS::TRAJECTORY"))

(in-package "ROS")
;;//! \htmlinclude Trajectory.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass automated_driving_msgs::Trajectory
  :super ros::object
  :slots (_id _probability _motion_states _set_based_position_uncertainty ))

(defmethod automated_driving_msgs::Trajectory
  (:init
   (&key
    ((:id __id) 0)
    ((:probability __probability) 0.0)
    ((:motion_states __motion_states) (let (r) (dotimes (i 0) (push (instance automated_driving_msgs::MotionState :init) r)) r))
    ((:set_based_position_uncertainty __set_based_position_uncertainty) (let (r) (dotimes (i 0) (push (instance geometry_msgs::Polygon :init) r)) r))
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _probability (float __probability))
   (setq _motion_states __motion_states)
   (setq _set_based_position_uncertainty __set_based_position_uncertainty)
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:motion_states
   (&rest __motion_states)
   (if (keywordp (car __motion_states))
       (send* _motion_states __motion_states)
     (progn
       (if __motion_states (setq _motion_states (car __motion_states)))
       _motion_states)))
  (:set_based_position_uncertainty
   (&rest __set_based_position_uncertainty)
   (if (keywordp (car __set_based_position_uncertainty))
       (send* _set_based_position_uncertainty __set_based_position_uncertainty)
     (progn
       (if __set_based_position_uncertainty (setq _set_based_position_uncertainty (car __set_based_position_uncertainty)))
       _set_based_position_uncertainty)))
  (:serialization-length
   ()
   (+
    ;; uint32 _id
    4
    ;; float32 _probability
    4
    ;; automated_driving_msgs/MotionState[] _motion_states
    (apply #'+ (send-all _motion_states :serialization-length)) 4
    ;; geometry_msgs/Polygon[] _set_based_position_uncertainty
    (apply #'+ (send-all _set_based_position_uncertainty :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint32 _id
       (write-long _id s)
     ;; float32 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; automated_driving_msgs/MotionState[] _motion_states
     (write-long (length _motion_states) s)
     (dolist (elem _motion_states)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Polygon[] _set_based_position_uncertainty
     (write-long (length _set_based_position_uncertainty) s)
     (dolist (elem _set_based_position_uncertainty)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _probability
     (setq _probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; automated_driving_msgs/MotionState[] _motion_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _motion_states (let (r) (dotimes (i n) (push (instance automated_driving_msgs::MotionState :init) r)) r))
     (dolist (elem- _motion_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Polygon[] _set_based_position_uncertainty
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _set_based_position_uncertainty (let (r) (dotimes (i n) (push (instance geometry_msgs::Polygon :init) r)) r))
     (dolist (elem- _set_based_position_uncertainty)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get automated_driving_msgs::Trajectory :md5sum-) "dfe3d1282121d63bd281a7dc32763b51")
(setf (get automated_driving_msgs::Trajectory :datatype-) "automated_driving_msgs/Trajectory")
(setf (get automated_driving_msgs::Trajectory :definition-)
      "# Message representing a trajectory as consecutive motion states
# NOTE: not compatible to http://wiki.ros.org/trajectory_msgs
# License: BSD

# ID of the trajectory
#    Meant to be unique for one set of trajectories
uint32 id

# Probability of the trajectory
#    Range: [0, 1]
#    To be set only if a set of trajectories is given
float32 probability

# Array of motion states with time that describe the trajectory
#    Sorted ascending by time
MotionState[] motion_states

# Array of polygons to describe the set-based position uncertainty
#    Array indices matching the MotionState[]; z=0 for each polygon point
#    For further details: http://docs.ros.org/api/geometry_msgs/html/msg/Polygon.html
geometry_msgs/Polygon[] set_based_position_uncertainty

================================================================================
MSG: automated_driving_msgs/MotionState
# This represents an estimate of a MotionState (position, velocity and acceleration) in free space.
# NOTE: Similar to nav_msgs/Odometry but including acceleration (http://docs.ros.org/api/nav_msgs/html/msg/Odometry.html)
# License: BSD

# Header
#   frame_id of the global reference frame (common: \"map\", \"odom\")
Header header

#   frame_id of the child frame that this MotionState describes (common: \"vehicle\", \"sensor_x\")
string child_frame_id

# Pose (Position + Orientation)
#   must be specified in the coordinate frame given by header.frame_id
#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/PoseWithCovariance.html
geometry_msgs/PoseWithCovariance pose

# Velocity
#   must be specified in the coordinate frame given by child_frame_id
#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/TwistWithCovariance.html
geometry_msgs/TwistWithCovariance twist

# Acceleration
#   must be specified in the coordinate frame given by child_frame_id
#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/AccelWithCovariance.html
geometry_msgs/AccelWithCovariance accel

# Treatment of unavailable data: almost as in http://docs.ros.org/api/sensor_msgs/html/msg/Imu.html:
#
# If the covariance of the measurement is known, it should be filled in (if all you know is the
# variance of each measurement, e.g. from a datasheet, just put those along the diagonal)
# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the
# data a covariance will have to be assumed or gotten from some other source
#
# If you have no estimate for one of the data elements, please set _the respective diagonal_ element
# of the associated covariance matrix to -1
# If you are interpreting this message, please check for a value of -1 in the _diagonal_ elements
# of each covariance matrix, and disregard the associated estimates.

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

================================================================================
MSG: geometry_msgs/TwistWithCovariance
# This expresses velocity in free space with uncertainty.

Twist twist

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/AccelWithCovariance
# This expresses acceleration in free space with uncertainty.

Accel accel

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Accel
# This expresses acceleration in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Polygon
#A specification of a polygon where the first and last points are assumed to be connected
Point32[] points

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :automated_driving_msgs/Trajectory "dfe3d1282121d63bd281a7dc32763b51")


