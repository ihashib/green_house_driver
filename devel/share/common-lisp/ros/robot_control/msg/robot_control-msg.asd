
(cl:in-package :asdf)

(defsystem "robot_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "manipulator_adc" :depends-on ("_package_manipulator_adc"))
    (:file "_package_manipulator_adc" :depends-on ("_package"))
    (:file "manipulator_control" :depends-on ("_package_manipulator_control"))
    (:file "_package_manipulator_control" :depends-on ("_package"))
  ))