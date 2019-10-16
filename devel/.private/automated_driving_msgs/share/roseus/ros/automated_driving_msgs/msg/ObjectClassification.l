;; Auto-generated. Do not edit!


(when (boundp 'automated_driving_msgs::ObjectClassification)
  (if (not (find-package "AUTOMATED_DRIVING_MSGS"))
    (make-package "AUTOMATED_DRIVING_MSGS"))
  (shadow 'ObjectClassification (find-package "AUTOMATED_DRIVING_MSGS")))
(unless (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION")
  (make-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))

(in-package "ROS")
;;//! \htmlinclude ObjectClassification.msg.html


(intern "*UNCLASSIFIED*" (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(shadow '*UNCLASSIFIED* (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(defconstant automated_driving_msgs::ObjectClassification::*UNCLASSIFIED* 0)
(intern "*PEDESTRIAN*" (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(shadow '*PEDESTRIAN* (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(defconstant automated_driving_msgs::ObjectClassification::*PEDESTRIAN* 1)
(intern "*BICYCLE*" (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(shadow '*BICYCLE* (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(defconstant automated_driving_msgs::ObjectClassification::*BICYCLE* 2)
(intern "*MOTORBIKE*" (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(shadow '*MOTORBIKE* (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(defconstant automated_driving_msgs::ObjectClassification::*MOTORBIKE* 3)
(intern "*CAR*" (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(shadow '*CAR* (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(defconstant automated_driving_msgs::ObjectClassification::*CAR* 4)
(intern "*TRUCK*" (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(shadow '*TRUCK* (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(defconstant automated_driving_msgs::ObjectClassification::*TRUCK* 5)
(intern "*VIRTUAL_OBJECT*" (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(shadow '*VIRTUAL_OBJECT* (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(defconstant automated_driving_msgs::ObjectClassification::*VIRTUAL_OBJECT* 81)
(intern "*OTHER_STATIC*" (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(shadow '*OTHER_STATIC* (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(defconstant automated_driving_msgs::ObjectClassification::*OTHER_STATIC* 91)
(intern "*OTHER_DYNAMIC*" (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(shadow '*OTHER_DYNAMIC* (find-package "AUTOMATED_DRIVING_MSGS::OBJECTCLASSIFICATION"))
(defconstant automated_driving_msgs::ObjectClassification::*OTHER_DYNAMIC* 92)
(defclass automated_driving_msgs::ObjectClassification
  :super ros::object
  :slots (_classes_with_probabilities ))

(defmethod automated_driving_msgs::ObjectClassification
  (:init
   (&key
    ((:classes_with_probabilities __classes_with_probabilities) (let (r) (dotimes (i 0) (push (instance automated_driving_msgs::ClassWithProbability :init) r)) r))
    )
   (send-super :init)
   (setq _classes_with_probabilities __classes_with_probabilities)
   self)
  (:classes_with_probabilities
   (&rest __classes_with_probabilities)
   (if (keywordp (car __classes_with_probabilities))
       (send* _classes_with_probabilities __classes_with_probabilities)
     (progn
       (if __classes_with_probabilities (setq _classes_with_probabilities (car __classes_with_probabilities)))
       _classes_with_probabilities)))
  (:serialization-length
   ()
   (+
    ;; automated_driving_msgs/ClassWithProbability[] _classes_with_probabilities
    (apply #'+ (send-all _classes_with_probabilities :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; automated_driving_msgs/ClassWithProbability[] _classes_with_probabilities
     (write-long (length _classes_with_probabilities) s)
     (dolist (elem _classes_with_probabilities)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; automated_driving_msgs/ClassWithProbability[] _classes_with_probabilities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _classes_with_probabilities (let (r) (dotimes (i n) (push (instance automated_driving_msgs::ClassWithProbability :init) r)) r))
     (dolist (elem- _classes_with_probabilities)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get automated_driving_msgs::ObjectClassification :md5sum-) "2870d8643da9a6670bb7ff8151c06889")
(setf (get automated_driving_msgs::ObjectClassification :datatype-) "automated_driving_msgs/ObjectClassification")
(setf (get automated_driving_msgs::ObjectClassification :definition-)
      "# Object Classification: classes with probabilities
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

")



(provide :automated_driving_msgs/ObjectClassification "2870d8643da9a6670bb7ff8151c06889")


