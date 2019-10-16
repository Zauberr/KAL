; Auto-generated. Do not edit!


(cl:in-package automated_driving_msgs-msg)


;//! \htmlinclude ClassWithProbability.msg.html

(cl:defclass <ClassWithProbability> (roslisp-msg-protocol:ros-message)
  ((classification
    :reader classification
    :initarg :classification
    :type cl:fixnum
    :initform 0)
   (probability
    :reader probability
    :initarg :probability
    :type cl:float
    :initform 0.0))
)

(cl:defclass ClassWithProbability (<ClassWithProbability>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ClassWithProbability>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ClassWithProbability)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name automated_driving_msgs-msg:<ClassWithProbability> is deprecated: use automated_driving_msgs-msg:ClassWithProbability instead.")))

(cl:ensure-generic-function 'classification-val :lambda-list '(m))
(cl:defmethod classification-val ((m <ClassWithProbability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:classification-val is deprecated.  Use automated_driving_msgs-msg:classification instead.")
  (classification m))

(cl:ensure-generic-function 'probability-val :lambda-list '(m))
(cl:defmethod probability-val ((m <ClassWithProbability>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:probability-val is deprecated.  Use automated_driving_msgs-msg:probability instead.")
  (probability m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ClassWithProbability>) ostream)
  "Serializes a message object of type '<ClassWithProbability>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'classification)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'probability))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ClassWithProbability>) istream)
  "Deserializes a message object of type '<ClassWithProbability>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'classification)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'probability) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ClassWithProbability>)))
  "Returns string type for a message object of type '<ClassWithProbability>"
  "automated_driving_msgs/ClassWithProbability")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ClassWithProbability)))
  "Returns string type for a message object of type 'ClassWithProbability"
  "automated_driving_msgs/ClassWithProbability")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ClassWithProbability>)))
  "Returns md5sum for a message object of type '<ClassWithProbability>"
  "597d4d46d4c71549dc3712237b4f7830")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ClassWithProbability)))
  "Returns md5sum for a message object of type 'ClassWithProbability"
  "597d4d46d4c71549dc3712237b4f7830")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ClassWithProbability>)))
  "Returns full string definition for message of type '<ClassWithProbability>"
  (cl:format cl:nil "# One class with its respective probability~%# License: BSD~%~%uint8 classification~%~%# Class probability~%#    Range: [0, 1]~%float32 probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ClassWithProbability)))
  "Returns full string definition for message of type 'ClassWithProbability"
  (cl:format cl:nil "# One class with its respective probability~%# License: BSD~%~%uint8 classification~%~%# Class probability~%#    Range: [0, 1]~%float32 probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ClassWithProbability>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ClassWithProbability>))
  "Converts a ROS message object to a list"
  (cl:list 'ClassWithProbability
    (cl:cons ':classification (classification msg))
    (cl:cons ':probability (probability msg))
))
