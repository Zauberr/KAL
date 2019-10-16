; Auto-generated. Do not edit!


(cl:in-package automated_driving_msgs-msg)


;//! \htmlinclude AdditionalHeaderForCommunication.msg.html

(cl:defclass <AdditionalHeaderForCommunication> (roslisp-msg-protocol:ros-message)
  ((sender_id
    :reader sender_id
    :initarg :sender_id
    :type cl:integer
    :initform 0)
   (sender_pose
    :reader sender_pose
    :initarg :sender_pose
    :type geometry_msgs-msg:PoseWithCovarianceStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovarianceStamped)))
)

(cl:defclass AdditionalHeaderForCommunication (<AdditionalHeaderForCommunication>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AdditionalHeaderForCommunication>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AdditionalHeaderForCommunication)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name automated_driving_msgs-msg:<AdditionalHeaderForCommunication> is deprecated: use automated_driving_msgs-msg:AdditionalHeaderForCommunication instead.")))

(cl:ensure-generic-function 'sender_id-val :lambda-list '(m))
(cl:defmethod sender_id-val ((m <AdditionalHeaderForCommunication>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:sender_id-val is deprecated.  Use automated_driving_msgs-msg:sender_id instead.")
  (sender_id m))

(cl:ensure-generic-function 'sender_pose-val :lambda-list '(m))
(cl:defmethod sender_pose-val ((m <AdditionalHeaderForCommunication>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:sender_pose-val is deprecated.  Use automated_driving_msgs-msg:sender_pose instead.")
  (sender_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AdditionalHeaderForCommunication>) ostream)
  "Serializes a message object of type '<AdditionalHeaderForCommunication>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sender_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sender_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sender_id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sender_id)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'sender_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AdditionalHeaderForCommunication>) istream)
  "Deserializes a message object of type '<AdditionalHeaderForCommunication>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'sender_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'sender_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'sender_id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'sender_id)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'sender_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AdditionalHeaderForCommunication>)))
  "Returns string type for a message object of type '<AdditionalHeaderForCommunication>"
  "automated_driving_msgs/AdditionalHeaderForCommunication")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AdditionalHeaderForCommunication)))
  "Returns string type for a message object of type 'AdditionalHeaderForCommunication"
  "automated_driving_msgs/AdditionalHeaderForCommunication")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AdditionalHeaderForCommunication>)))
  "Returns md5sum for a message object of type '<AdditionalHeaderForCommunication>"
  "7ad8d6ff3241e85a418314f4bfc67b90")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AdditionalHeaderForCommunication)))
  "Returns md5sum for a message object of type 'AdditionalHeaderForCommunication"
  "7ad8d6ff3241e85a418314f4bfc67b90")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AdditionalHeaderForCommunication>)))
  "Returns full string definition for message of type '<AdditionalHeaderForCommunication>"
  (cl:format cl:nil "# Additional header for a communication message~%# License: BSD~%~%# ObjectID of the sender~%uint32 sender_id~%~%# Position of the sender at time of sending the message~%geometry_msgs/PoseWithCovarianceStamped sender_pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AdditionalHeaderForCommunication)))
  "Returns full string definition for message of type 'AdditionalHeaderForCommunication"
  (cl:format cl:nil "# Additional header for a communication message~%# License: BSD~%~%# ObjectID of the sender~%uint32 sender_id~%~%# Position of the sender at time of sending the message~%geometry_msgs/PoseWithCovarianceStamped sender_pose~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovarianceStamped~%# This expresses an estimated pose with a reference coordinate frame and timestamp~%~%Header header~%PoseWithCovariance pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AdditionalHeaderForCommunication>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'sender_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AdditionalHeaderForCommunication>))
  "Converts a ROS message object to a list"
  (cl:list 'AdditionalHeaderForCommunication
    (cl:cons ':sender_id (sender_id msg))
    (cl:cons ':sender_pose (sender_pose msg))
))
