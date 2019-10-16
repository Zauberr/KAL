; Auto-generated. Do not edit!


(cl:in-package automated_driving_msgs-msg)


;//! \htmlinclude MotionState.msg.html

(cl:defclass <MotionState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (child_frame_id
    :reader child_frame_id
    :initarg :child_frame_id
    :type cl:string
    :initform "")
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance))
   (twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:TwistWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:TwistWithCovariance))
   (accel
    :reader accel
    :initarg :accel
    :type geometry_msgs-msg:AccelWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:AccelWithCovariance)))
)

(cl:defclass MotionState (<MotionState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotionState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotionState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name automated_driving_msgs-msg:<MotionState> is deprecated: use automated_driving_msgs-msg:MotionState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MotionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:header-val is deprecated.  Use automated_driving_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'child_frame_id-val :lambda-list '(m))
(cl:defmethod child_frame_id-val ((m <MotionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:child_frame_id-val is deprecated.  Use automated_driving_msgs-msg:child_frame_id instead.")
  (child_frame_id m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <MotionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:pose-val is deprecated.  Use automated_driving_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <MotionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:twist-val is deprecated.  Use automated_driving_msgs-msg:twist instead.")
  (twist m))

(cl:ensure-generic-function 'accel-val :lambda-list '(m))
(cl:defmethod accel-val ((m <MotionState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:accel-val is deprecated.  Use automated_driving_msgs-msg:accel instead.")
  (accel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotionState>) ostream)
  "Serializes a message object of type '<MotionState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'child_frame_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'child_frame_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'accel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotionState>) istream)
  "Deserializes a message object of type '<MotionState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'child_frame_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'child_frame_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'accel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotionState>)))
  "Returns string type for a message object of type '<MotionState>"
  "automated_driving_msgs/MotionState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotionState)))
  "Returns string type for a message object of type 'MotionState"
  "automated_driving_msgs/MotionState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotionState>)))
  "Returns md5sum for a message object of type '<MotionState>"
  "bb0cbaf5855ebe9a32252628d6901b03")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotionState)))
  "Returns md5sum for a message object of type 'MotionState"
  "bb0cbaf5855ebe9a32252628d6901b03")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotionState>)))
  "Returns full string definition for message of type '<MotionState>"
  (cl:format cl:nil "# This represents an estimate of a MotionState (position, velocity and acceleration) in free space.~%# NOTE: Similar to nav_msgs/Odometry but including acceleration (http://docs.ros.org/api/nav_msgs/html/msg/Odometry.html)~%# License: BSD~%~%# Header~%#   frame_id of the global reference frame (common: \"map\", \"odom\")~%Header header~%~%#   frame_id of the child frame that this MotionState describes (common: \"vehicle\", \"sensor_x\")~%string child_frame_id~%~%# Pose (Position + Orientation)~%#   must be specified in the coordinate frame given by header.frame_id~%#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/PoseWithCovariance.html~%geometry_msgs/PoseWithCovariance pose~%~%# Velocity~%#   must be specified in the coordinate frame given by child_frame_id~%#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/TwistWithCovariance.html~%geometry_msgs/TwistWithCovariance twist~%~%# Acceleration~%#   must be specified in the coordinate frame given by child_frame_id~%#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/AccelWithCovariance.html~%geometry_msgs/AccelWithCovariance accel~%~%# Treatment of unavailable data: almost as in http://docs.ros.org/api/sensor_msgs/html/msg/Imu.html:~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the~%# variance of each measurement, e.g. from a datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements, please set _the respective diagonal_ element~%# of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the _diagonal_ elements~%# of each covariance matrix, and disregard the associated estimates.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotionState)))
  "Returns full string definition for message of type 'MotionState"
  (cl:format cl:nil "# This represents an estimate of a MotionState (position, velocity and acceleration) in free space.~%# NOTE: Similar to nav_msgs/Odometry but including acceleration (http://docs.ros.org/api/nav_msgs/html/msg/Odometry.html)~%# License: BSD~%~%# Header~%#   frame_id of the global reference frame (common: \"map\", \"odom\")~%Header header~%~%#   frame_id of the child frame that this MotionState describes (common: \"vehicle\", \"sensor_x\")~%string child_frame_id~%~%# Pose (Position + Orientation)~%#   must be specified in the coordinate frame given by header.frame_id~%#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/PoseWithCovariance.html~%geometry_msgs/PoseWithCovariance pose~%~%# Velocity~%#   must be specified in the coordinate frame given by child_frame_id~%#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/TwistWithCovariance.html~%geometry_msgs/TwistWithCovariance twist~%~%# Acceleration~%#   must be specified in the coordinate frame given by child_frame_id~%#   For further details: http://docs.ros.org/api/geometry_msgs/html/msg/AccelWithCovariance.html~%geometry_msgs/AccelWithCovariance accel~%~%# Treatment of unavailable data: almost as in http://docs.ros.org/api/sensor_msgs/html/msg/Imu.html:~%#~%# If the covariance of the measurement is known, it should be filled in (if all you know is the~%# variance of each measurement, e.g. from a datasheet, just put those along the diagonal)~%# A covariance matrix of all zeros will be interpreted as \"covariance unknown\", and to use the~%# data a covariance will have to be assumed or gotten from some other source~%#~%# If you have no estimate for one of the data elements, please set _the respective diagonal_ element~%# of the associated covariance matrix to -1~%# If you are interpreting this message, please check for a value of -1 in the _diagonal_ elements~%# of each covariance matrix, and disregard the associated estimates.~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/TwistWithCovariance~%# This expresses velocity in free space with uncertainty.~%~%Twist twist~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/AccelWithCovariance~%# This expresses acceleration in free space with uncertainty.~%~%Accel accel~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Accel~%# This expresses acceleration in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotionState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'child_frame_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'accel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotionState>))
  "Converts a ROS message object to a list"
  (cl:list 'MotionState
    (cl:cons ':header (header msg))
    (cl:cons ':child_frame_id (child_frame_id msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':twist (twist msg))
    (cl:cons ':accel (accel msg))
))
