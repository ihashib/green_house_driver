;; Auto-generated. Do not edit!


(when (boundp 'robot_control::manipulator_adc)
  (if (not (find-package "ROBOT_CONTROL"))
    (make-package "ROBOT_CONTROL"))
  (shadow 'manipulator_adc (find-package "ROBOT_CONTROL")))
(unless (find-package "ROBOT_CONTROL::MANIPULATOR_ADC")
  (make-package "ROBOT_CONTROL::MANIPULATOR_ADC"))

(in-package "ROS")
;;//! \htmlinclude manipulator_adc.msg.html


(defclass robot_control::manipulator_adc
  :super ros::object
  :slots (_base_fd _ac1_fd _ac2_fd _ac3_fd _wrist_fd _claw_fd ))

(defmethod robot_control::manipulator_adc
  (:init
   (&key
    ((:base_fd __base_fd) 0)
    ((:ac1_fd __ac1_fd) 0)
    ((:ac2_fd __ac2_fd) 0)
    ((:ac3_fd __ac3_fd) 0)
    ((:wrist_fd __wrist_fd) 0)
    ((:claw_fd __claw_fd) 0)
    )
   (send-super :init)
   (setq _base_fd (round __base_fd))
   (setq _ac1_fd (round __ac1_fd))
   (setq _ac2_fd (round __ac2_fd))
   (setq _ac3_fd (round __ac3_fd))
   (setq _wrist_fd (round __wrist_fd))
   (setq _claw_fd (round __claw_fd))
   self)
  (:base_fd
   (&optional __base_fd)
   (if __base_fd (setq _base_fd __base_fd)) _base_fd)
  (:ac1_fd
   (&optional __ac1_fd)
   (if __ac1_fd (setq _ac1_fd __ac1_fd)) _ac1_fd)
  (:ac2_fd
   (&optional __ac2_fd)
   (if __ac2_fd (setq _ac2_fd __ac2_fd)) _ac2_fd)
  (:ac3_fd
   (&optional __ac3_fd)
   (if __ac3_fd (setq _ac3_fd __ac3_fd)) _ac3_fd)
  (:wrist_fd
   (&optional __wrist_fd)
   (if __wrist_fd (setq _wrist_fd __wrist_fd)) _wrist_fd)
  (:claw_fd
   (&optional __claw_fd)
   (if __claw_fd (setq _claw_fd __claw_fd)) _claw_fd)
  (:serialization-length
   ()
   (+
    ;; uint16 _base_fd
    2
    ;; uint16 _ac1_fd
    2
    ;; uint16 _ac2_fd
    2
    ;; uint16 _ac3_fd
    2
    ;; uint16 _wrist_fd
    2
    ;; uint16 _claw_fd
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _base_fd
       (write-word _base_fd s)
     ;; uint16 _ac1_fd
       (write-word _ac1_fd s)
     ;; uint16 _ac2_fd
       (write-word _ac2_fd s)
     ;; uint16 _ac3_fd
       (write-word _ac3_fd s)
     ;; uint16 _wrist_fd
       (write-word _wrist_fd s)
     ;; uint16 _claw_fd
       (write-word _claw_fd s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _base_fd
     (setq _base_fd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ac1_fd
     (setq _ac1_fd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ac2_fd
     (setq _ac2_fd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _ac3_fd
     (setq _ac3_fd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _wrist_fd
     (setq _wrist_fd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _claw_fd
     (setq _claw_fd (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get robot_control::manipulator_adc :md5sum-) "1750cc3164fbe6e56c557c43a182eb58")
(setf (get robot_control::manipulator_adc :datatype-) "robot_control/manipulator_adc")
(setf (get robot_control::manipulator_adc :definition-)
      "uint16 base_fd
uint16 ac1_fd
uint16 ac2_fd
uint16 ac3_fd
uint16 wrist_fd
uint16 claw_fd	
")



(provide :robot_control/manipulator_adc "1750cc3164fbe6e56c557c43a182eb58")


