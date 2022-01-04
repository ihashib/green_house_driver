; Auto-generated. Do not edit!


(cl:in-package robot_control-msg)


;//! \htmlinclude manipulator_control.msg.html

(cl:defclass <manipulator_control> (roslisp-msg-protocol:ros-message)
  ((base
    :reader base
    :initarg :base
    :type cl:fixnum
    :initform 0)
   (base_pwm
    :reader base_pwm
    :initarg :base_pwm
    :type cl:fixnum
    :initform 0)
   (ac1
    :reader ac1
    :initarg :ac1
    :type cl:fixnum
    :initform 0)
   (ac1_pwm
    :reader ac1_pwm
    :initarg :ac1_pwm
    :type cl:fixnum
    :initform 0)
   (ac2
    :reader ac2
    :initarg :ac2
    :type cl:fixnum
    :initform 0)
   (ac2_pwm
    :reader ac2_pwm
    :initarg :ac2_pwm
    :type cl:fixnum
    :initform 0)
   (ac3
    :reader ac3
    :initarg :ac3
    :type cl:fixnum
    :initform 0)
   (ac3_pwm
    :reader ac3_pwm
    :initarg :ac3_pwm
    :type cl:fixnum
    :initform 0)
   (wrist
    :reader wrist
    :initarg :wrist
    :type cl:fixnum
    :initform 0)
   (wrist_pwm
    :reader wrist_pwm
    :initarg :wrist_pwm
    :type cl:fixnum
    :initform 0)
   (claw
    :reader claw
    :initarg :claw
    :type cl:fixnum
    :initform 0)
   (claw_pwm
    :reader claw_pwm
    :initarg :claw_pwm
    :type cl:fixnum
    :initform 0))
)

(cl:defclass manipulator_control (<manipulator_control>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <manipulator_control>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'manipulator_control)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_control-msg:<manipulator_control> is deprecated: use robot_control-msg:manipulator_control instead.")))

(cl:ensure-generic-function 'base-val :lambda-list '(m))
(cl:defmethod base-val ((m <manipulator_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:base-val is deprecated.  Use robot_control-msg:base instead.")
  (base m))

(cl:ensure-generic-function 'base_pwm-val :lambda-list '(m))
(cl:defmethod base_pwm-val ((m <manipulator_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:base_pwm-val is deprecated.  Use robot_control-msg:base_pwm instead.")
  (base_pwm m))

(cl:ensure-generic-function 'ac1-val :lambda-list '(m))
(cl:defmethod ac1-val ((m <manipulator_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:ac1-val is deprecated.  Use robot_control-msg:ac1 instead.")
  (ac1 m))

(cl:ensure-generic-function 'ac1_pwm-val :lambda-list '(m))
(cl:defmethod ac1_pwm-val ((m <manipulator_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:ac1_pwm-val is deprecated.  Use robot_control-msg:ac1_pwm instead.")
  (ac1_pwm m))

(cl:ensure-generic-function 'ac2-val :lambda-list '(m))
(cl:defmethod ac2-val ((m <manipulator_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:ac2-val is deprecated.  Use robot_control-msg:ac2 instead.")
  (ac2 m))

(cl:ensure-generic-function 'ac2_pwm-val :lambda-list '(m))
(cl:defmethod ac2_pwm-val ((m <manipulator_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:ac2_pwm-val is deprecated.  Use robot_control-msg:ac2_pwm instead.")
  (ac2_pwm m))

(cl:ensure-generic-function 'ac3-val :lambda-list '(m))
(cl:defmethod ac3-val ((m <manipulator_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:ac3-val is deprecated.  Use robot_control-msg:ac3 instead.")
  (ac3 m))

(cl:ensure-generic-function 'ac3_pwm-val :lambda-list '(m))
(cl:defmethod ac3_pwm-val ((m <manipulator_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:ac3_pwm-val is deprecated.  Use robot_control-msg:ac3_pwm instead.")
  (ac3_pwm m))

(cl:ensure-generic-function 'wrist-val :lambda-list '(m))
(cl:defmethod wrist-val ((m <manipulator_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:wrist-val is deprecated.  Use robot_control-msg:wrist instead.")
  (wrist m))

(cl:ensure-generic-function 'wrist_pwm-val :lambda-list '(m))
(cl:defmethod wrist_pwm-val ((m <manipulator_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:wrist_pwm-val is deprecated.  Use robot_control-msg:wrist_pwm instead.")
  (wrist_pwm m))

(cl:ensure-generic-function 'claw-val :lambda-list '(m))
(cl:defmethod claw-val ((m <manipulator_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:claw-val is deprecated.  Use robot_control-msg:claw instead.")
  (claw m))

(cl:ensure-generic-function 'claw_pwm-val :lambda-list '(m))
(cl:defmethod claw_pwm-val ((m <manipulator_control>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:claw_pwm-val is deprecated.  Use robot_control-msg:claw_pwm instead.")
  (claw_pwm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <manipulator_control>) ostream)
  "Serializes a message object of type '<manipulator_control>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'base)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'base_pwm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac1)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac1_pwm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac2)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac2_pwm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac3)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac3_pwm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wrist)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wrist_pwm)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'claw)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'claw_pwm)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <manipulator_control>) istream)
  "Deserializes a message object of type '<manipulator_control>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'base)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'base_pwm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac1)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac1_pwm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac2)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac2_pwm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac3)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac3_pwm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wrist)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wrist_pwm)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'claw)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'claw_pwm)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<manipulator_control>)))
  "Returns string type for a message object of type '<manipulator_control>"
  "robot_control/manipulator_control")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'manipulator_control)))
  "Returns string type for a message object of type 'manipulator_control"
  "robot_control/manipulator_control")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<manipulator_control>)))
  "Returns md5sum for a message object of type '<manipulator_control>"
  "a6a779fd1572e741e193ee9c3b3ad415")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'manipulator_control)))
  "Returns md5sum for a message object of type 'manipulator_control"
  "a6a779fd1572e741e193ee9c3b3ad415")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<manipulator_control>)))
  "Returns full string definition for message of type '<manipulator_control>"
  (cl:format cl:nil "uint8 base~%uint8 base_pwm~%uint8 ac1~%uint8 ac1_pwm~%uint8 ac2~%uint8 ac2_pwm~%uint8 ac3~%uint8 ac3_pwm~%uint8 wrist~%uint8 wrist_pwm~%uint8 claw~%uint8 claw_pwm~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'manipulator_control)))
  "Returns full string definition for message of type 'manipulator_control"
  (cl:format cl:nil "uint8 base~%uint8 base_pwm~%uint8 ac1~%uint8 ac1_pwm~%uint8 ac2~%uint8 ac2_pwm~%uint8 ac3~%uint8 ac3_pwm~%uint8 wrist~%uint8 wrist_pwm~%uint8 claw~%uint8 claw_pwm~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <manipulator_control>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <manipulator_control>))
  "Converts a ROS message object to a list"
  (cl:list 'manipulator_control
    (cl:cons ':base (base msg))
    (cl:cons ':base_pwm (base_pwm msg))
    (cl:cons ':ac1 (ac1 msg))
    (cl:cons ':ac1_pwm (ac1_pwm msg))
    (cl:cons ':ac2 (ac2 msg))
    (cl:cons ':ac2_pwm (ac2_pwm msg))
    (cl:cons ':ac3 (ac3 msg))
    (cl:cons ':ac3_pwm (ac3_pwm msg))
    (cl:cons ':wrist (wrist msg))
    (cl:cons ':wrist_pwm (wrist_pwm msg))
    (cl:cons ':claw (claw msg))
    (cl:cons ':claw_pwm (claw_pwm msg))
))
