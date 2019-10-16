
(cl:in-package :asdf)

(defsystem "automated_driving_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :shape_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "AdditionalHeaderForCommunication" :depends-on ("_package_AdditionalHeaderForCommunication"))
    (:file "_package_AdditionalHeaderForCommunication" :depends-on ("_package"))
    (:file "BasicSafetyMessage" :depends-on ("_package_BasicSafetyMessage"))
    (:file "_package_BasicSafetyMessage" :depends-on ("_package"))
    (:file "ClassWithProbability" :depends-on ("_package_ClassWithProbability"))
    (:file "_package_ClassWithProbability" :depends-on ("_package"))
    (:file "DeltaPoseWithDeltaTime" :depends-on ("_package_DeltaPoseWithDeltaTime"))
    (:file "_package_DeltaPoseWithDeltaTime" :depends-on ("_package"))
    (:file "DeltaTrajectory" :depends-on ("_package_DeltaTrajectory"))
    (:file "_package_DeltaTrajectory" :depends-on ("_package"))
    (:file "MotionPrediction" :depends-on ("_package_MotionPrediction"))
    (:file "_package_MotionPrediction" :depends-on ("_package"))
    (:file "MotionState" :depends-on ("_package_MotionState"))
    (:file "_package_MotionState" :depends-on ("_package"))
    (:file "ObjectClassification" :depends-on ("_package_ObjectClassification"))
    (:file "_package_ObjectClassification" :depends-on ("_package"))
    (:file "ObjectState" :depends-on ("_package_ObjectState"))
    (:file "_package_ObjectState" :depends-on ("_package"))
    (:file "ObjectStateArray" :depends-on ("_package_ObjectStateArray"))
    (:file "_package_ObjectStateArray" :depends-on ("_package"))
    (:file "StampedFloat64" :depends-on ("_package_StampedFloat64"))
    (:file "_package_StampedFloat64" :depends-on ("_package"))
    (:file "Trajectory" :depends-on ("_package_Trajectory"))
    (:file "_package_Trajectory" :depends-on ("_package"))
  ))