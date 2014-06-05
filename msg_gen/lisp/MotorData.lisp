; Auto-generated. Do not edit!


(cl:in-package crazyflie-msg)


;//! \htmlinclude MotorData.msg.html

(cl:defclass <MotorData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (m1
    :reader m1
    :initarg :m1
    :type cl:integer
    :initform 0)
   (m2
    :reader m2
    :initarg :m2
    :type cl:integer
    :initform 0)
   (m3
    :reader m3
    :initarg :m3
    :type cl:integer
    :initform 0)
   (m4
    :reader m4
    :initarg :m4
    :type cl:integer
    :initform 0))
)

(cl:defclass MotorData (<MotorData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MotorData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MotorData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie-msg:<MotorData> is deprecated: use crazyflie-msg:MotorData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie-msg:header-val is deprecated.  Use crazyflie-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'm1-val :lambda-list '(m))
(cl:defmethod m1-val ((m <MotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie-msg:m1-val is deprecated.  Use crazyflie-msg:m1 instead.")
  (m1 m))

(cl:ensure-generic-function 'm2-val :lambda-list '(m))
(cl:defmethod m2-val ((m <MotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie-msg:m2-val is deprecated.  Use crazyflie-msg:m2 instead.")
  (m2 m))

(cl:ensure-generic-function 'm3-val :lambda-list '(m))
(cl:defmethod m3-val ((m <MotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie-msg:m3-val is deprecated.  Use crazyflie-msg:m3 instead.")
  (m3 m))

(cl:ensure-generic-function 'm4-val :lambda-list '(m))
(cl:defmethod m4-val ((m <MotorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie-msg:m4-val is deprecated.  Use crazyflie-msg:m4 instead.")
  (m4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MotorData>) ostream)
  "Serializes a message object of type '<MotorData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'm1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'm2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'm3)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'm4)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MotorData>) istream)
  "Deserializes a message object of type '<MotorData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'm1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'm2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'm3) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'm4) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MotorData>)))
  "Returns string type for a message object of type '<MotorData>"
  "crazyflie/MotorData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MotorData)))
  "Returns string type for a message object of type 'MotorData"
  "crazyflie/MotorData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MotorData>)))
  "Returns md5sum for a message object of type '<MotorData>"
  "257e3dae15056b7e89ecd8c57477fe54")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MotorData)))
  "Returns md5sum for a message object of type 'MotorData"
  "257e3dae15056b7e89ecd8c57477fe54")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MotorData>)))
  "Returns full string definition for message of type '<MotorData>"
  (cl:format cl:nil "Header header~%int32 m1~%int32 m2~%int32 m3~%int32 m4~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MotorData)))
  "Returns full string definition for message of type 'MotorData"
  (cl:format cl:nil "Header header~%int32 m1~%int32 m2~%int32 m3~%int32 m4~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MotorData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MotorData>))
  "Converts a ROS message object to a list"
  (cl:list 'MotorData
    (cl:cons ':header (header msg))
    (cl:cons ':m1 (m1 msg))
    (cl:cons ':m2 (m2 msg))
    (cl:cons ':m3 (m3 msg))
    (cl:cons ':m4 (m4 msg))
))
