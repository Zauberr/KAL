;; Auto-generated. Do not edit!


(when (boundp 'automated_driving_msgs::ObjectState)
  (if (not (find-package "AUTOMATED_DRIVING_MSGS"))
    (make-package "AUTOMATED_DRIVING_MSGS"))
  (shadow 'ObjectState (find-package "AUTOMATED_DRIVING_MSGS")))
(unless (find-package "AUTOMATED_DRIVING_MSGS::OBJECTSTATE")
  (make-package "AUTOMATED_DRIVING_MSGS::OBJECTSTATE"))

(in-package "ROS")
;;//! \htmlinclude ObjectState.msg.html
(if (not (find-package "SHAPE_MSGS"))
  (ros::roseus-add-msgs "shape_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass automated_driving_msgs::ObjectState
  :super ros::object
  :slots (_header _object_id _existence_probability _classification _motion_state _motion_prediction _hull ))

(defmethod automated_driving_msgs::ObjectState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:object_id __object_id) 0)
    ((:existence_probability __existence_probability) 0.0)
    ((:classification __classification) (instance automated_driving_msgs::ObjectClassification :init))
    ((:motion_state __motion_state) (instance automated_driving_msgs::MotionState :init))
    ((:motion_prediction __motion_prediction) (instance automated_driving_msgs::MotionPrediction :init))
    ((:hull __hull) (instance shape_msgs::Mesh :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _object_id (round __object_id))
   (setq _existence_probability (float __existence_probability))
   (setq _classification __classification)
   (setq _motion_state __motion_state)
   (setq _motion_prediction __motion_prediction)
   (setq _hull __hull)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:object_id
   (&optional __object_id)
   (if __object_id (setq _object_id __object_id)) _object_id)
  (:existence_probability
   (&optional __existence_probability)
   (if __existence_probability (setq _existence_probability __existence_probability)) _existence_probability)
  (:classification
   (&rest __classification)
   (if (keywordp (car __classification))
       (send* _classification __classification)
     (progn
       (if __classification (setq _classification (car __classification)))
       _classification)))
  (:motion_state
   (&rest __motion_state)
   (if (keywordp (car __motion_state))
       (send* _motion_state __motion_state)
     (progn
       (if __motion_state (setq _motion_state (car __motion_state)))
       _motion_state)))
  (:motion_prediction
   (&rest __motion_prediction)
   (if (keywordp (car __motion_prediction))
       (send* _motion_prediction __motion_prediction)
     (progn
       (if __motion_prediction (setq _motion_prediction (car __motion_prediction)))
       _motion_prediction)))
  (:hull
   (&rest __hull)
   (if (keywordp (car __hull))
       (send* _hull __hull)
     (progn
       (if __hull (setq _hull (car __hull)))
       _hull)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint32 _object_id
    4
    ;; float32 _existence_probability
    4
    ;; automated_driving_msgs/ObjectClassification _classification
    (send _classification :serialization-length)
    ;; automated_driving_msgs/MotionState _motion_state
    (send _motion_state :serialization-length)
    ;; automated_driving_msgs/MotionPrediction _motion_prediction
    (send _motion_prediction :serialization-length)
    ;; shape_msgs/Mesh _hull
    (send _hull :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint32 _object_id
       (write-long _object_id s)
     ;; float32 _existence_probability
       (sys::poke _existence_probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; automated_driving_msgs/ObjectClassification _classification
       (send _classification :serialize s)
     ;; automated_driving_msgs/MotionState _motion_state
       (send _motion_state :serialize s)
     ;; automated_driving_msgs/MotionPrediction _motion_prediction
       (send _motion_prediction :serialize s)
     ;; shape_msgs/Mesh _hull
       (send _hull :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint32 _object_id
     (setq _object_id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _existence_probability
     (setq _existence_probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; automated_driving_msgs/ObjectClassification _classification
     (send _classification :deserialize buf ptr-) (incf ptr- (send _classification :serialization-length))
   ;; automated_driving_msgs/MotionState _motion_state
     (send _motion_state :deserialize buf ptr-) (incf ptr- (send _motion_state :serialization-length))
   ;; automated_driving_msgs/MotionPrediction _motion_prediction
     (send _motion_prediction :deserialize buf ptr-) (incf ptr- (send _motion_prediction :serialization-length))
   ;; shape_msgs/Mesh _hull
     (send _hull :deserialize buf ptr-) (incf ptr- (send _hull :serialization-length))
   ;;
   self)
  )

(setf (get automated_driving_msgs::ObjectState :md5sum-) "252f7388e514cebd27017dc53d461b71")
(setf (get automated_driving_msgs::ObjectState :datatype-) "automated_driving_msgs/ObjectState")
(setf (get automated_driving_msgs::ObjectState :definition-)
      "# Message for the state of an object
# License: BSD

# Header
Header header

# Lifetime ID of the object
uint32 object_id

# Existence measure
#    Range: [0, 1]
float32 existence_probability

# Object classification
ObjectClassification classification

# Motion state of the object
MotionState motion_state

# Current motion prediction of the object
MotionPrediction motion_prediction

# Standard Message for the object dimensions
#    Relative to motion_state/pose/pose
#    For further details: http://docs.ros.org/api/shape_msgs/html/msg/Mesh.html
shape_msgs/Mesh hull

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
MSG: automated_driving_msgs/ObjectClassification
# Object Classification: classes with probabilities
# License: BSD

# Possible Types (enum, to be extended)
uint8 UNCLASSIFIED=0
uint8 PEDESTRIAN=1
uint8 BICYCLE=2
uint8 MOTORBIKE=3
uint8 CAR=4
uint8 TRUCK=5
# Virtual Object (e.g. for behavior generation)
uint8 VIRTUAL_OBJECT=81
# If object class is definitely none of the upper, these classes are to be used
uint8 OTHER_STATIC=91
uint8 OTHER_DYNAMIC=92

# The object classes with their respective probability
#    Sorted descending by probability (highest first)
ClassWithProbability[] classes_with_probabilities

================================================================================
MSG: automated_driving_msgs/ClassWithProbability
# One class with its respective probability
# License: BSD

uint8 classification

# Class probability
#    Range: [0, 1]
float32 probability

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
MSG: automated_driving_msgs/MotionPrediction
# Message for the prediction of an object
# License: BSD

# Header
Header header

# Possible Trajectories (including their probability)
#    Sorted descending by probability (highest first)
Trajectory[] trajectories

================================================================================
MSG: automated_driving_msgs/Trajectory
# Message representing a trajectory as consecutive motion states
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
================================================================================
MSG: shape_msgs/Mesh
# Definition of a mesh

# list of triangles; the index values refer to positions in vertices[]
MeshTriangle[] triangles

# the actual vertices that make up the mesh
geometry_msgs/Point[] vertices

================================================================================
MSG: shape_msgs/MeshTriangle
# Definition of a triangle's vertices
uint32[3] vertex_indices

")



(provide :automated_driving_msgs/ObjectState "252f7388e514cebd27017dc53d461b71")


