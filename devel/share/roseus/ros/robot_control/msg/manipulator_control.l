;; Auto-generated. Do not edit!


(when (boundp 'robot_control::manipulator_control)
  (if (not (find-package "ROBOT_CONTROL"))
    (make-package "ROBOT_CONTROL"))
  (shadow 'manipulator_control (find-package "ROBOT_CONTROL")))
(unless (find-package "ROBOT_CONTROL::MANIPULATOR_CONTROL")
  (make-package "ROBOT_CONTROL::MANIPULATOR_CONTROL"))

(in-package "ROS")
;;//! \htmlinclude manipulator_control.msg.html


(defclass robot_control::manipulator_control
  :super ros::object
  :slots (_base _base_pwm _ac1 _ac1_pwm _ac2 _ac2_pwm _ac3 _ac3_pwm _wrist _wrist_pwm _claw _claw_pwm ))

(defmethod robot_control::manipulator_control
  (:init
   (&key
    ((:base __base) 0)
    ((:base_pwm __base_pwm) 0)
    ((:ac1 __ac1) 0)
    ((:ac1_pwm __ac1_pwm) 0)
    ((:ac2 __ac2) 0)
    ((:ac2_pwm __ac2_pwm) 0)
    ((:ac3 __ac3) 0)
    ((:ac3_pwm __ac3_pwm) 0)
    ((:wrist __wrist) 0)
    ((:wrist_pwm __wrist_pwm) 0)
    ((:claw __claw) 0)
    ((:claw_pwm __claw_pwm) 0)
    )
   (send-super :init)
   (setq _base (round __base))
   (setq _base_pwm (round __base_pwm))
   (setq _ac1 (round __ac1))
   (setq _ac1_pwm (round __ac1_pwm))
   (setq _ac2 (round __ac2))
   (setq _ac2_pwm (round __ac2_pwm))
   (setq _ac3 (round __ac3))
   (setq _ac3_pwm (round __ac3_pwm))
   (setq _wrist (round __wrist))
   (setq _wrist_pwm (round __wrist_pwm))
   (setq _claw (round __claw))
   (setq _claw_pwm (round __claw_pwm))
   self)
  (:base
   (&optional __base)
   (if __base (setq _base __base)) _base)
  (:base_pwm
   (&optional __base_pwm)
   (if __base_pwm (setq _base_pwm __base_pwm)) _base_pwm)
  (:ac1
   (&optional __ac1)
   (if __ac1 (setq _ac1 __ac1)) _ac1)
  (:ac1_pwm
   (&optional __ac1_pwm)
   (if __ac1_pwm (setq _ac1_pwm __ac1_pwm)) _ac1_pwm)
  (:ac2
   (&optional __ac2)
   (if __ac2 (setq _ac2 __ac2)) _ac2)
  (:ac2_pwm
   (&optional __ac2_pwm)
   (if __ac2_pwm (setq _ac2_pwm __ac2_pwm)) _ac2_pwm)
  (:ac3
   (&optional __ac3)
   (if __ac3 (setq _ac3 __ac3)) _ac3)
  (:ac3_pwm
   (&optional __ac3_pwm)
   (if __ac3_pwm (setq _ac3_pwm __ac3_pwm)) _ac3_pwm)
  (:wrist
   (&optional __wrist)
   (if __wrist (setq _wrist __wrist)) _wrist)
  (:wrist_pwm
   (&optional __wrist_pwm)
   (if __wrist_pwm (setq _wrist_pwm __wrist_pwm)) _wrist_pwm)
  (:claw
   (&optional __claw)
   (if __claw (setq _claw __claw)) _claw)
  (:claw_pwm
   (&optional __claw_pwm)
   (if __claw_pwm (setq _claw_pwm __claw_pwm)) _claw_pwm)
  (:serialization-length
   ()
   (+
    ;; uint8 _base
    1
    ;; uint8 _base_pwm
    1
    ;; uint8 _ac1
    1
    ;; uint8 _ac1_pwm
    1
    ;; uint8 _ac2
    1
    ;; uint8 _ac2_pwm
    1
    ;; uint8 _ac3
    1
    ;; uint8 _ac3_pwm
    1
    ;; uint8 _wrist
    1
    ;; uint8 _wrist_pwm
    1
    ;; uint8 _claw
    1
    ;; uint8 _claw_pwm
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _base
       (write-byte _base s)
     ;; uint8 _base_pwm
       (write-byte _base_pwm s)
     ;; uint8 _ac1
       (write-byte _ac1 s)
     ;; uint8 _ac1_pwm
       (write-byte _ac1_pwm s)
     ;; uint8 _ac2
       (write-byte _ac2 s)
     ;; uint8 _ac2_pwm
       (write-byte _ac2_pwm s)
     ;; uint8 _ac3
       (write-byte _ac3 s)
     ;; uint8 _ac3_pwm
       (write-byte _ac3_pwm s)
     ;; uint8 _wrist
       (write-byte _wrist s)
     ;; uint8 _wrist_pwm
       (write-byte _wrist_pwm s)
     ;; uint8 _claw
       (write-byte _claw s)
     ;; uint8 _claw_pwm
       (write-byte _claw_pwm s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _base
     (setq _base (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _base_pwm
     (setq _base_pwm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ac1
     (setq _ac1 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ac1_pwm
     (setq _ac1_pwm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ac2
     (setq _ac2 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ac2_pwm
     (setq _ac2_pwm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ac3
     (setq _ac3 (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _ac3_pwm
     (setq _ac3_pwm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _wrist
     (setq _wrist (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _wrist_pwm
     (setq _wrist_pwm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _claw
     (setq _claw (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint8 _claw_pwm
     (setq _claw_pwm (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get robot_control::manipulator_control :md5sum-) "a6a779fd1572e741e193ee9c3b3ad415")
(setf (get robot_control::manipulator_control :datatype-) "robot_control/manipulator_control")
(setf (get robot_control::manipulator_control :definition-)
      "uint8 base
uint8 base_pwm
uint8 ac1
uint8 ac1_pwm
uint8 ac2
uint8 ac2_pwm
uint8 ac3
uint8 ac3_pwm
uint8 wrist
uint8 wrist_pwm
uint8 claw
uint8 claw_pwm
")



(provide :robot_control/manipulator_control "a6a779fd1572e741e193ee9c3b3ad415")


