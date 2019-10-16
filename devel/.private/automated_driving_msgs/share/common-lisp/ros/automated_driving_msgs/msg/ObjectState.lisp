; Auto-generated. Do not edit!


(cl:in-package automated_driving_msgs-msg)


;//! \htmlinclude ObjectState.msg.html

(cl:defclass <ObjectState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (object_id
    :reader object_id
    :initarg :object_id
    :type cl:integer
    :initform 0)
   (existence_probability
    :reader existence_probability
    :initarg :existence_probability
    :type cl:float
    :initform 0.0)
   (classification
    :reader classification
    :initarg :classification
    :type automated_driving_msgs-msg:ObjectClassification
    :initform (cl:make-instance 'automated_driving_msgs-msg:ObjectClassification))
   (motion_state
    :reader motion_state
    :initarg :motion_state
    :type automated_driving_msgs-msg:MotionState
    :initform (cl:make-instance 'automated_driving_msgs-msg:MotionState))
   (motion_prediction
    :reader motion_prediction
    :initarg :motion_prediction
    :type automated_driving_msgs-msg:MotionPrediction
    :initform (cl:make-instance 'automated_driving_msgs-msg:MotionPrediction))
   (hull
    :reader hull
    :initarg :hull
    :type shape_msgs-msg:Mesh
    :initform (cl:make-instance 'shape_msgs-msg:Mesh)))
)

(cl:defclass ObjectState (<ObjectState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name automated_driving_msgs-msg:<ObjectState> is deprecated: use automated_driving_msgs-msg:ObjectState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:header-val is deprecated.  Use automated_driving_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'object_id-val :lambda-list '(m))
(cl:defmethod object_id-val ((m <ObjectState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:object_id-val is deprecated.  Use automated_driving_msgs-msg:object_id instead.")
  (object_id m))

(cl:ensure-generic-function 'existence_probability-val :lambda-list '(m))
(cl:defmethod existence_probability-val ((m <ObjectState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:existence_probability-val is deprecated.  Use automated_driving_msgs-msg:existence_probability instead.")
  (existence_probability m))

(cl:ensure-generic-function 'classification-val :lambda-list '(m))
(cl:defmethod classification-val ((m <ObjectState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:classification-val is deprecated.  Use automated_driving_msgs-msg:classification instead.")
  (classification m))

(cl:ensure-generic-function 'motion_state-val :lambda-list '(m))
(cl:defmethod motion_state-val ((m <ObjectState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:motion_state-val is deprecated.  Use automated_driving_msgs-msg:motion_state instead.")
  (motion_state m))

(cl:ensure-generic-function 'motion_prediction-val :lambda-list '(m))
(cl:defmethod motion_prediction-val ((m <ObjectState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:motion_prediction-val is deprecated.  Use automated_driving_msgs-msg:motion_prediction instead.")
  (motion_prediction m))

(cl:ensure-generic-function 'hull-val :lambda-list '(m))
(cl:defmethod hull-val ((m <ObjectState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:hull-val is deprecated.  Use automated_driving_msgs-msg:hull instead.")
  (hull m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectState>) ostream)
  "Serializes a message object of type '<ObjectState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'existence_probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'classification) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motion_state) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'motion_prediction) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'hull) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectState>) istream)
  "Deserializes a message object of type '<ObjectState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'object_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'existence_probability) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'classification) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motion_state) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'motion_prediction) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'hull) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectState>)))
  "Returns string type for a message object of type '<ObjectState>"
  "automated_driving_msgs/ObjectState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectState)))
  "Returns string type for a message object of type 'ObjectState"
  "automated_driving_msgs/ObjectState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectState>)))
  "Returns md5sum for a message object of type '<ObjectState>"
  "252f7388e514cebd27017dc53d461b71")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectState)))
  "Returns md5sum for a message object of type 'ObjectState"
  "252f7388e514cebd27017dc53d461b71")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectState>)))
  "Returns full string definition for message of type '<ObjectState>"
  (cl:format cl:nil "# Message for the state of an object~%# License: BSD~%~%# Header~%Header header~%~%# Lifetime ID of the object~%uint32 object_id~%~%# Existence measure~%#    Range: [0, 1]~%float32 existence_probability~%~%# Object classification~%ObjectClassification classification~%~%# Motion state of the object~%MotionState motion_state~%~%# Current motion prediction of the object~%MotionPrediction motion_prediction~%~%# Standard Message for the object dimensions~%#    Relative to motion_state/pose/pose~%#    For further details: http://docs.ros.org/api/shape_msgs/html/msg/Mesh.html~%shape_msgs/Mesh hull~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: automated_driving_msgs/ObjectClassification~%# Object Classification: classes with probabilities~%# License: BSD~%~%# Possible Types (enum, to be extended)~%uint8 UNCLASSIFIED=0~%uint8 PEDESTRIAN=1~%uint8 BICYCLE=2~%uint8 MOTORBIKE=3~%uint8 CAR=4~%uint8 TRUCK=5~%# Virtual Object (e.g. for behavior generation)~%uint8 VIRTUAL_OBJECT=81~%# If object class is definitely none of the upper, these classes are to be used~%uint8 OTHER_STATIC=91~%uint8 OTHER_DYNAMIC=92~%~%# The object classes with their respective probability~%#    Sorted descending by probability (highest first)~%ClassWithProbability[] classes_with_probabilities~%~%================================================================================~%MSG: automated_driving_msgs/ClassWithProbability~%# One class with its respective probability~%# License: BSD~%~%uint8 classification~%~%# Class probability~%#    Range: [0, 1]~%float32 probability~%~%================================================================================~%MSG: automated_driving_msgs/MotionState~%# This represents an estimate of a MotionState (position, velocity and acceleration) in free space.~%# NOTE: Similar to nav_msgs/Odometry but including acceleration (http://docs.ros.org/api/nav_msgs/html/msg/Odometry.html)~%# License: BSD~%~%# Header~%#   frame_id of the global reference frame (common: \"map\", \"odom\")~%Header header~%~%#   frame_id of the child frame that this MotionState describes (common: \"vehicle\", \"sensor_x\")~%string child_frame_id~%~%# Pose (Position + Orientation)~%#   must be specified in the coordinate frame given by header.frame_id~%#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/PoseWithCovariance.html~%geometry_msgs/PoseWithCovariance pose~%~%# Velocity~%#   must be specified in the coordinate frame given by child_frame_id~%#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/TwistWithCovariance.html~%geometry_msgs/TwistWithCovariance twist~%~%# Acceleration~%#   must be specified in the coordinate frame given by child_frame_id~%#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/AccelWithCovariance.html~%geometry_msgs/AccelWithCovariance accel~%~%# Treatment of unavailable data: almost as in http://docs.ros.org/api/sensor_msgs/html/msg/Imu.html:~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the~%# variance of each measurement, e.g. from a datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements, please set _the respective diagonal_ element~%# of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the _diagonal_ elements~%# of each covariance matrix, and disregard the associated estimates.~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: automated_driving_msgs/MotionPrediction~%# Message for the prediction of an object~%# License: BSD~%~%# Header~%Header header~%~%# Possible Trajectories (including their probability)~%#    Sorted descending by probability (highest first)~%Trajectory[] trajectories~%~%================================================================================~%MSG: automated_driving_msgs/Trajectory~%# Message representing a trajectory as consecutive motion states~%# NOTE: not compatible to http://wiki.ros.org/trajectory_msgs~%# License: BSD~%~%# ID of the trajectory~%#    Meant to be unique for one set of trajectories~%uint32 id~%~%# Probability of the trajectory~%#    Range: [0, 1]~%#    To be set only if a set of trajectories is given~%float32 probability~%~%# Array of motion states with time that describe the trajectory~%#    Sorted ascending by time~%MotionState[] motion_states~%~%# Array of polygons to describe the set-based position uncertainty~%#    Array indices matching the MotionState[]; z=0 for each polygon point~%#    For further details: http://docs.ros.org/api/geometry_msgs/html/msg/Polygon.html~%geometry_msgs/Polygon[] set_based_position_uncertainty~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: shape_msgs/Mesh~%# Definition of a mesh~%~%# list of triangles; the index values refer to positions in vertices[]~%MeshTriangle[] triangles~%~%# the actual vertices that make up the mesh~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: shape_msgs/MeshTriangle~%# Definition of a triangle's vertices~%uint32[3] vertex_indices~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectState)))
  "Returns full string definition for message of type 'ObjectState"
  (cl:format cl:nil "# Message for the state of an object~%# License: BSD~%~%# Header~%Header header~%~%# Lifetime ID of the object~%uint32 object_id~%~%# Existence measure~%#    Range: [0, 1]~%float32 existence_probability~%~%# Object classification~%ObjectClassification classification~%~%# Motion state of the object~%MotionState motion_state~%~%# Current motion prediction of the object~%MotionPrediction motion_prediction~%~%# Standard Message for the object dimensions~%#    Relative to motion_state/pose/pose~%#    For further details: http://docs.ros.org/api/shape_msgs/html/msg/Mesh.html~%shape_msgs/Mesh hull~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: automated_driving_msgs/ObjectClassification~%# Object Classification: classes with probabilities~%# License: BSD~%~%# Possible Types (enum, to be extended)~%uint8 UNCLASSIFIED=0~%uint8 PEDESTRIAN=1~%uint8 BICYCLE=2~%uint8 MOTORBIKE=3~%uint8 CAR=4~%uint8 TRUCK=5~%# Virtual Object (e.g. for behavior generation)~%uint8 VIRTUAL_OBJECT=81~%# If object class is definitely none of the upper, these classes are to be used~%uint8 OTHER_STATIC=91~%uint8 OTHER_DYNAMIC=92~%~%# The object classes with their respective probability~%#    Sorted descending by probability (highest first)~%ClassWithProbability[] classes_with_probabilities~%~%================================================================================~%MSG: automated_driving_msgs/ClassWithProbability~%# One class with its respective probability~%# License: BSD~%~%uint8 classification~%~%# Class probability~%#    Range: [0, 1]~%float32 probability~%~%================================================================================~%MSG: automated_driving_msgs/MotionState~%# This represents an estimate of a MotionState (position, velocity and acceleration) in free space.~%# NOTE: Similar to nav_msgs/Odometry but including acceleration (http://docs.ros.org/api/nav_msgs/html/msg/Odometry.html)~%# License: BSD~%~%# Header~%#   frame_id of the global reference frame (common: \"map\", \"odom\")~%Header header~%~%#   frame_id of the child frame that this MotionState describes (common: \"vehicle\", \"sensor_x\")~%string child_frame_id~%~%# Pose (Position + Orientation)~%#   must be specified in the coordinate frame given by header.frame_id~%#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/PoseWithCovariance.html~%geometry_msgs/PoseWithCovariance pose~%~%# Velocity~%#   must be specified in the coordinate frame given by child_frame_id~%#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/TwistWithCovariance.html~%geometry_msgs/TwistWithCovariance twist~%~%# Acceleration~%#   must be specified in the coordinate frame given by child_frame_id~%#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/AccelWithCovariance.html~%geometry_msgs/AccelWithCovariance accel~%~%# Treatment of unavailable data: almost as in http://docs.ros.org/api/sensor_msgs/html/msg/Imu.html:~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the~%# variance of each measurement, e.g. from a datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements, please set _the respective diagonal_ element~%# of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the _diagonal_ elements~%# of each covariance matrix, and disregard the associated estimates.~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: automated_driving_msgs/MotionPrediction~%# Message for the prediction of an object~%# License: BSD~%~%# Header~%Header header~%~%# Possible Trajectories (including their probability)~%#    Sorted descending by probability (highest first)~%Trajectory[] trajectories~%~%================================================================================~%MSG: automated_driving_msgs/Trajectory~%# Message representing a trajectory as consecutive motion states~%# NOTE: not compatible to http://wiki.ros.org/trajectory_msgs~%# License: BSD~%~%# ID of the trajectory~%#    Meant to be unique for one set of trajectories~%uint32 id~%~%# Probability of the trajectory~%#    Range: [0, 1]~%#    To be set only if a set of trajectories is given~%float32 probability~%~%# Array of motion states with time that describe the trajectory~%#    Sorted ascending by time~%MotionState[] motion_states~%~%# Array of polygons to describe the set-based position uncertainty~%#    Array indices matching the MotionState[]; z=0 for each polygon point~%#    For further details: http://docs.ros.org/api/geometry_msgs/html/msg/Polygon.html~%geometry_msgs/Polygon[] set_based_position_uncertainty~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%================================================================================~%MSG: shape_msgs/Mesh~%# Definition of a mesh~%~%# list of triangles; the index values refer to positions in vertices[]~%MeshTriangle[] triangles~%~%# the actual vertices that make up the mesh~%geometry_msgs/Point[] vertices~%~%================================================================================~%MSG: shape_msgs/MeshTriangle~%# Definition of a triangle's vertices~%uint32[3] vertex_indices~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'classification))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motion_state))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'motion_prediction))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'hull))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectState>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectState
    (cl:cons ':header (header msg))
    (cl:cons ':object_id (object_id msg))
    (cl:cons ':existence_probability (existence_probability msg))
    (cl:cons ':classification (classification msg))
    (cl:cons ':motion_state (motion_state msg))
    (cl:cons ':motion_prediction (motion_prediction msg))
    (cl:cons ':hull (hull msg))
))
