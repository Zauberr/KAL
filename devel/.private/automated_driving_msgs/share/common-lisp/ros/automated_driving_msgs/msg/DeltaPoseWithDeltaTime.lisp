; Auto-generated. Do not edit!


(cl:in-package automated_driving_msgs-msg)


;//! \htmlinclude DeltaPoseWithDeltaTime.msg.html

(cl:defclass <DeltaPoseWithDeltaTime> (roslisp-msg-protocol:ros-message)
  ((delta_time
    :reader delta_time
    :initarg :delta_time
    :type cl:real
    :initform 0)
   (delta_pose
    :reader delta_pose
    :initarg :delta_pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose)))
)

(cl:defclass DeltaPoseWithDeltaTime (<DeltaPoseWithDeltaTime>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DeltaPoseWithDeltaTime>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DeltaPoseWithDeltaTime)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name automated_driving_msgs-msg:<DeltaPoseWithDeltaTime> is deprecated: use automated_driving_msgs-msg:DeltaPoseWithDeltaTime instead.")))

(cl:ensure-generic-function 'delta_time-val :lambda-list '(m))
(cl:defmethod delta_time-val ((m <DeltaPoseWithDeltaTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:delta_time-val is deprecated.  Use automated_driving_msgs-msg:delta_time instead.")
  (delta_time m))

(cl:ensure-generic-function 'delta_pose-val :lambda-list '(m))
(cl:defmethod delta_pose-val ((m <DeltaPoseWithDeltaTime>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:delta_pose-val is deprecated.  Use automated_driving_msgs-msg:delta_pose instead.")
  (delta_pose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DeltaPoseWithDeltaTime>) ostream)
  "Serializes a message object of type '<DeltaPoseWithDeltaTime>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'delta_time)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'delta_time) (cl:floor (cl:slot-value msg 'delta_time)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'delta_pose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DeltaPoseWithDeltaTime>) istream)
  "Deserializes a message object of type '<DeltaPoseWithDeltaTime>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'delta_time) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'delta_pose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DeltaPoseWithDeltaTime>)))
  "Returns string type for a message object of type '<DeltaPoseWithDeltaTime>"
  "automated_driving_msgs/DeltaPoseWithDeltaTime")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DeltaPoseWithDeltaTime)))
  "Returns string type for a message object of type 'DeltaPoseWithDeltaTime"
  "automated_driving_msgs/DeltaPoseWithDeltaTime")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DeltaPoseWithDeltaTime>)))
  "Returns md5sum for a message object of type '<DeltaPoseWithDeltaTime>"
  "bd491e1e86421bdc854fe78f7237bf17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DeltaPoseWithDeltaTime)))
  "Returns md5sum for a message object of type 'DeltaPoseWithDeltaTime"
  "bd491e1e86421bdc854fe78f7237bf17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DeltaPoseWithDeltaTime>)))
  "Returns full string definition for message of type '<DeltaPoseWithDeltaTime>"
  (cl:format cl:nil "# Message for a desired position of an object~%# License: BSD~%~%# Time Delta, after which the position is to be reached~%#    For further details: http://wiki.ros.org/std_msgs~%duration delta_time~%~%# The Position Delta to be reached~%#    This delta is always relative to the current position and orientation of the object~%#    For further details: http://docs.ros.org/api/geometry_msgs/html/msg/Pose.html~%geometry_msgs/Pose delta_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DeltaPoseWithDeltaTime)))
  "Returns full string definition for message of type 'DeltaPoseWithDeltaTime"
  (cl:format cl:nil "# Message for a desired position of an object~%# License: BSD~%~%# Time Delta, after which the position is to be reached~%#    For further details: http://wiki.ros.org/std_msgs~%duration delta_time~%~%# The Position Delta to be reached~%#    This delta is always relative to the current position and orientation of the object~%#    For further details: http://docs.ros.org/api/geometry_msgs/html/msg/Pose.html~%geometry_msgs/Pose delta_pose~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of position and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DeltaPoseWithDeltaTime>))
  (cl:+ 0
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'delta_pose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DeltaPoseWithDeltaTime>))
  "Converts a ROS message object to a list"
  (cl:list 'DeltaPoseWithDeltaTime
    (cl:cons ':delta_time (delta_time msg))
    (cl:cons ':delta_pose (delta_pose msg))
))
