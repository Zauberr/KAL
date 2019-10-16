; Auto-generated. Do not edit!


(cl:in-package automated_driving_msgs-msg)


;//! \htmlinclude ObjectClassification.msg.html

(cl:defclass <ObjectClassification> (roslisp-msg-protocol:ros-message)
  ((classes_with_probabilities
    :reader classes_with_probabilities
    :initarg :classes_with_probabilities
    :type (cl:vector automated_driving_msgs-msg:ClassWithProbability)
   :initform (cl:make-array 0 :element-type 'automated_driving_msgs-msg:ClassWithProbability :initial-element (cl:make-instance 'automated_driving_msgs-msg:ClassWithProbability))))
)

(cl:defclass ObjectClassification (<ObjectClassification>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectClassification>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectClassification)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name automated_driving_msgs-msg:<ObjectClassification> is deprecated: use automated_driving_msgs-msg:ObjectClassification instead.")))

(cl:ensure-generic-function 'classes_with_probabilities-val :lambda-list '(m))
(cl:defmethod classes_with_probabilities-val ((m <ObjectClassification>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader automated_driving_msgs-msg:classes_with_probabilities-val is deprecated.  Use automated_driving_msgs-msg:classes_with_probabilities instead.")
  (classes_with_probabilities m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjectClassification>)))
    "Constants for message type '<ObjectClassification>"
  '((:UNCLASSIFIED . 0)
    (:PEDESTRIAN . 1)
    (:BICYCLE . 2)
    (:MOTORBIKE . 3)
    (:CAR . 4)
    (:TRUCK . 5)
    (:VIRTUAL_OBJECT . 81)
    (:OTHER_STATIC . 91)
    (:OTHER_DYNAMIC . 92))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjectClassification)))
    "Constants for message type 'ObjectClassification"
  '((:UNCLASSIFIED . 0)
    (:PEDESTRIAN . 1)
    (:BICYCLE . 2)
    (:MOTORBIKE . 3)
    (:CAR . 4)
    (:TRUCK . 5)
    (:VIRTUAL_OBJECT . 81)
    (:OTHER_STATIC . 91)
    (:OTHER_DYNAMIC . 92))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectClassification>) ostream)
  "Serializes a message object of type '<ObjectClassification>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'classes_with_probabilities))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'classes_with_probabilities))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectClassification>) istream)
  "Deserializes a message object of type '<ObjectClassification>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'classes_with_probabilities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'classes_with_probabilities)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'automated_driving_msgs-msg:ClassWithProbability))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectClassification>)))
  "Returns string type for a message object of type '<ObjectClassification>"
  "automated_driving_msgs/ObjectClassification")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectClassification)))
  "Returns string type for a message object of type 'ObjectClassification"
  "automated_driving_msgs/ObjectClassification")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectClassification>)))
  "Returns md5sum for a message object of type '<ObjectClassification>"
  "2870d8643da9a6670bb7ff8151c06889")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectClassification)))
  "Returns md5sum for a message object of type 'ObjectClassification"
  "2870d8643da9a6670bb7ff8151c06889")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectClassification>)))
  "Returns full string definition for message of type '<ObjectClassification>"
  (cl:format cl:nil "# Object Classification: classes with probabilities~%# License: BSD~%~%# Possible Types (enum, to be extended)~%uint8 UNCLASSIFIED=0~%uint8 PEDESTRIAN=1~%uint8 BICYCLE=2~%uint8 MOTORBIKE=3~%uint8 CAR=4~%uint8 TRUCK=5~%# Virtual Object (e.g. for behavior generation)~%uint8 VIRTUAL_OBJECT=81~%# If object class is definitely none of the upper, these classes are to be used~%uint8 OTHER_STATIC=91~%uint8 OTHER_DYNAMIC=92~%~%# The object classes with their respective probability~%#    Sorted descending by probability (highest first)~%ClassWithProbability[] classes_with_probabilities~%~%================================================================================~%MSG: automated_driving_msgs/ClassWithProbability~%# One class with its respective probability~%# License: BSD~%~%uint8 classification~%~%# Class probability~%#    Range: [0, 1]~%float32 probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectClassification)))
  "Returns full string definition for message of type 'ObjectClassification"
  (cl:format cl:nil "# Object Classification: classes with probabilities~%# License: BSD~%~%# Possible Types (enum, to be extended)~%uint8 UNCLASSIFIED=0~%uint8 PEDESTRIAN=1~%uint8 BICYCLE=2~%uint8 MOTORBIKE=3~%uint8 CAR=4~%uint8 TRUCK=5~%# Virtual Object (e.g. for behavior generation)~%uint8 VIRTUAL_OBJECT=81~%# If object class is definitely none of the upper, these classes are to be used~%uint8 OTHER_STATIC=91~%uint8 OTHER_DYNAMIC=92~%~%# The object classes with their respective probability~%#    Sorted descending by probability (highest first)~%ClassWithProbability[] classes_with_probabilities~%~%================================================================================~%MSG: automated_driving_msgs/ClassWithProbability~%# One class with its respective probability~%# License: BSD~%~%uint8 classification~%~%# Class probability~%#    Range: [0, 1]~%float32 probability~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectClassification>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'classes_with_probabilities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectClassification>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectClassification
    (cl:cons ':classes_with_probabilities (classes_with_probabilities msg))
))
