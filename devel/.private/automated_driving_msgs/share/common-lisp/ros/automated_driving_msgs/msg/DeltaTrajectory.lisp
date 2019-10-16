; Auto-generated. Do not edit!


(cl:in-package automated_driving_msgs-msg)


;//! \htmlinclude DeltaTrajectory.msg.html

(cl:defclass <DeltaTrajectory> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (delta_poses_with_delta_time
    :reader delta_poses_with_delta_time
    :initarg :delta_poses_with_delta_time
    :type (cl:vector automated_driving_msgs-msg:DeltaPoseWithDeltaTime)
   :initform (cl:make-array 0 :element-type 'automated_driving_msgs-msg:DeltaPoseWithDeltaTime :initial-element (cl:make-instance 'automated_driving_msgs-msg:DeltaPoseWithDeltaTime))))
)

(cl:defclass DeltaTrajectory (<DeltaTrajectory>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeltaTrajectory>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeltaTrajectory)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name automated_driving_msgs-msg:<DeltaTrajectory> is deprecated: use automated_driving_msgs-msg:DeltaTrajectory instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DeltaTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:header-val is deprecated.  Use automated_driving_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'delta_poses_with_delta_time-val :lambda-list '(m))
(cl:defmethod delta_poses_with_delta_time-val ((m <DeltaTrajectory>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:delta_poses_with_delta_time-val is deprecated.  Use automated_driving_msgs-msg:delta_poses_with_delta_time instead.")
  (delta_poses_with_delta_time m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeltaTrajectory>) ostream)
  "Serializes a message object of type '<DeltaTrajectory>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'delta_poses_with_delta_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'delta_poses_with_delta_time))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeltaTrajectory>) istream)
  "Deserializes a message object of type '<DeltaTrajectory>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'delta_poses_with_delta_time) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'delta_poses_with_delta_time)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'automated_driving_msgs-msg:DeltaPoseWithDeltaTime))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeltaTrajectory>)))
  "Returns string type for a message object of type '<DeltaTrajectory>"
  "automated_driving_msgs/DeltaTrajectory")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeltaTrajectory)))
  "Returns string type for a message object of type 'DeltaTrajectory"
  "automated_driving_msgs/DeltaTrajectory")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeltaTrajectory>)))
  "Returns md5sum for a message object of type '<DeltaTrajectory>"
  "326b401761a7fb398dc1c64746db2f8e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeltaTrajectory)))
  "Returns md5sum for a message object of type 'DeltaTrajectory"
  "326b401761a7fb398dc1c64746db2f8e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeltaTrajectory>)))
  "Returns full string definition for message of type '<DeltaTrajectory>"
  (cl:format cl:nil "# Message for a desired motion of an object expressed by an array of desired positions~%# License: BSD~%~%# Header~%Header header~%~%# Array of desired delta positions with their respective delta time, after which the position is to be reached~%DeltaPoseWithDeltaTime[] delta_poses_with_delta_time~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: automated_driving_msgs/DeltaPoseWithDeltaTime~%# Message for a desired position of an object~%# License: BSD~%~%# Time Delta, after which the position is to be reached~%#    For further details: http://wiki.ros.org/std_msgs~%duration delta_time~%~%# The Position Delta to be reached~%#    This delta is always relative to the current position and orientation of the object~%#    For further details: http://docs.ros.org/api/geometry_msgs/html/msg/Pose.html~%geometry_msgs/Pose delta_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeltaTrajectory)))
  "Returns full string definition for message of type 'DeltaTrajectory"
  (cl:format cl:nil "# Message for a desired motion of an object expressed by an array of desired positions~%# License: BSD~%~%# Header~%Header header~%~%# Array of desired delta positions with their respective delta time, after which the position is to be reached~%DeltaPoseWithDeltaTime[] delta_poses_with_delta_time~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: automated_driving_msgs/DeltaPoseWithDeltaTime~%# Message for a desired position of an object~%# License: BSD~%~%# Time Delta, after which the position is to be reached~%#    For further details: http://wiki.ros.org/std_msgs~%duration delta_time~%~%# The Position Delta to be reached~%#    This delta is always relative to the current position and orientation of the object~%#    For further details: http://docs.ros.org/api/geometry_msgs/html/msg/Pose.html~%geometry_msgs/Pose delta_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeltaTrajectory>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'delta_poses_with_delta_time) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeltaTrajectory>))
  "Converts a ROS message object to a list"
  (cl:list 'DeltaTrajectory
    (cl:cons ':header (header msg))
    (cl:cons ':delta_poses_with_delta_time (delta_poses_with_delta_time msg))
))
