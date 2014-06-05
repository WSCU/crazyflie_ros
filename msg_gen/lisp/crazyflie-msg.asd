
(cl:in-package :asdf)

(defsystem "crazyflie-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "MotorData" :depends-on ("_package_MotorData"))
    (:file "_package_MotorData" :depends-on ("_package"))
    (:file "StabData" :depends-on ("_package_StabData"))
    (:file "_package_StabData" :depends-on ("_package"))
    (:file "AccelData" :depends-on ("_package_AccelData"))
    (:file "_package_AccelData" :depends-on ("_package"))
    (:file "GyroData" :depends-on ("_package_GyroData"))
    (:file "_package_GyroData" :depends-on ("_package"))
  ))