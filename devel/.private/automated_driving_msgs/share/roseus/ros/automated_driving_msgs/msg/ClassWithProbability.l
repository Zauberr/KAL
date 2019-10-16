;; Auto-generated. Do not edit!


(when (boundp 'automated_driving_msgs::ClassWithProbability)
  (if (not (find-package "AUTOMATED_DRIVING_MSGS"))
    (make-package "AUTOMATED_DRIVING_MSGS"))
  (shadow 'ClassWithProbability (find-package "AUTOMATED_DRIVING_MSGS")))
(unless (find-package "AUTOMATED_DRIVING_MSGS::CLASSWITHPROBABILITY")
  (make-package "AUTOMATED_DRIVING_MSGS::CLASSWITHPROBABILITY"))

(in-package "ROS")
;;//! \htmlinclude ClassWithProbability.msg.html


(defclass automated_driving_msgs::ClassWithProbability
  :super ros::object
  :slots (_classification _probability ))

(defmethod automated_driving_msgs::ClassWithProbability
  (:init
   (&key
    ((:classification __classification) 0)
    ((:probability __probability) 0.0)
    )
   (send-super :init)
   (setq _classification (round __classification))
   (setq _probability (float __probability))
   self)
  (:classification
   (&optional __classification)
   (if __classification (setq _classification __classification)) _classification)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:serialization-length
   ()
   (+
    ;; uint8 _classification
    1
    ;; float32 _probability
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _classification
       (write-byte _classification s)
     ;; float32 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _classification
     (setq _classification (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _probability
     (setq _probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get automated_driving_msgs::ClassWithProbability :md5sum-) "597d4d46d4c71549dc3712237b4f7830")
(setf (get automated_driving_msgs::ClassWithProbability :datatype-) "automated_driving_msgs/ClassWithProbability")
(setf (get automated_driving_msgs::ClassWithProbability :definition-)
      "# One class with its respective probability
# License: BSD

uint8 classification

# Class probability
#    Range: [0, 1]
float32 probability

")



(provide :automated_driving_msgs/ClassWithProbability "597d4d46d4c71549dc3712237b4f7830")


