; Auto-generated. Do not edit!


(cl:in-package robot_control-msg)


;//! \htmlinclude manipulator_adc.msg.html

(cl:defclass <manipulator_adc> (roslisp-msg-protocol:ros-message)
  ((base_fd
    :reader base_fd
    :initarg :base_fd
    :type cl:fixnum
    :initform 0)
   (ac1_fd
    :reader ac1_fd
    :initarg :ac1_fd
    :type cl:fixnum
    :initform 0)
   (ac2_fd
    :reader ac2_fd
    :initarg :ac2_fd
    :type cl:fixnum
    :initform 0)
   (ac3_fd
    :reader ac3_fd
    :initarg :ac3_fd
    :type cl:fixnum
    :initform 0)
   (wrist_fd
    :reader wrist_fd
    :initarg :wrist_fd
    :type cl:fixnum
    :initform 0)
   (claw_fd
    :reader claw_fd
    :initarg :claw_fd
    :type cl:fixnum
    :initform 0))
)

(cl:defclass manipulator_adc (<manipulator_adc>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <manipulator_adc>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'manipulator_adc)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_control-msg:<manipulator_adc> is deprecated: use robot_control-msg:manipulator_adc instead.")))

(cl:ensure-generic-function 'base_fd-val :lambda-list '(m))
(cl:defmethod base_fd-val ((m <manipulator_adc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:base_fd-val is deprecated.  Use robot_control-msg:base_fd instead.")
  (base_fd m))

(cl:ensure-generic-function 'ac1_fd-val :lambda-list '(m))
(cl:defmethod ac1_fd-val ((m <manipulator_adc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:ac1_fd-val is deprecated.  Use robot_control-msg:ac1_fd instead.")
  (ac1_fd m))

(cl:ensure-generic-function 'ac2_fd-val :lambda-list '(m))
(cl:defmethod ac2_fd-val ((m <manipulator_adc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:ac2_fd-val is deprecated.  Use robot_control-msg:ac2_fd instead.")
  (ac2_fd m))

(cl:ensure-generic-function 'ac3_fd-val :lambda-list '(m))
(cl:defmethod ac3_fd-val ((m <manipulator_adc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:ac3_fd-val is deprecated.  Use robot_control-msg:ac3_fd instead.")
  (ac3_fd m))

(cl:ensure-generic-function 'wrist_fd-val :lambda-list '(m))
(cl:defmethod wrist_fd-val ((m <manipulator_adc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:wrist_fd-val is deprecated.  Use robot_control-msg:wrist_fd instead.")
  (wrist_fd m))

(cl:ensure-generic-function 'claw_fd-val :lambda-list '(m))
(cl:defmethod claw_fd-val ((m <manipulator_adc>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_control-msg:claw_fd-val is deprecated.  Use robot_control-msg:claw_fd instead.")
  (claw_fd m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <manipulator_adc>) ostream)
  "Serializes a message object of type '<manipulator_adc>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'base_fd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'base_fd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac1_fd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ac1_fd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac2_fd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ac2_fd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac3_fd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ac3_fd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wrist_fd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wrist_fd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'claw_fd)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'claw_fd)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <manipulator_adc>) istream)
  "Deserializes a message object of type '<manipulator_adc>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'base_fd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'base_fd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac1_fd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ac1_fd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac2_fd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ac2_fd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'ac3_fd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'ac3_fd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'wrist_fd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'wrist_fd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'claw_fd)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'claw_fd)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<manipulator_adc>)))
  "Returns string type for a message object of type '<manipulator_adc>"
  "robot_control/manipulator_adc")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'manipulator_adc)))
  "Returns string type for a message object of type 'manipulator_adc"
  "robot_control/manipulator_adc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<manipulator_adc>)))
  "Returns md5sum for a message object of type '<manipulator_adc>"
  "1750cc3164fbe6e56c557c43a182eb58")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'manipulator_adc)))
  "Returns md5sum for a message object of type 'manipulator_adc"
  "1750cc3164fbe6e56c557c43a182eb58")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<manipulator_adc>)))
  "Returns full string definition for message of type '<manipulator_adc>"
  (cl:format cl:nil "uint16 base_fd~%uint16 ac1_fd~%uint16 ac2_fd~%uint16 ac3_fd~%uint16 wrist_fd~%uint16 claw_fd	~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'manipulator_adc)))
  "Returns full string definition for message of type 'manipulator_adc"
  (cl:format cl:nil "uint16 base_fd~%uint16 ac1_fd~%uint16 ac2_fd~%uint16 ac3_fd~%uint16 wrist_fd~%uint16 claw_fd	~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <manipulator_adc>))
  (cl:+ 0
     2
     2
     2
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <manipulator_adc>))
  "Converts a ROS message object to a list"
  (cl:list 'manipulator_adc
    (cl:cons ':base_fd (base_fd msg))
    (cl:cons ':ac1_fd (ac1_fd msg))
    (cl:cons ':ac2_fd (ac2_fd msg))
    (cl:cons ':ac3_fd (ac3_fd msg))
    (cl:cons ':wrist_fd (wrist_fd msg))
    (cl:cons ':claw_fd (claw_fd msg))
))
