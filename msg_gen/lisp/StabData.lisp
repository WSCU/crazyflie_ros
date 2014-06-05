; Auto-generated. Do not edit!


(cl:in-package crazyflie-msg)


;//! \htmlinclude StabData.msg.html

(cl:defclass <StabData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (thrust
    :reader thrust
    :initarg :thrust
    :type cl:fixnum
    :initform 0)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:float
    :initform 0.0)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:float
    :initform 0.0)
   (roll
    :reader roll
    :initarg :roll
    :type cl:float
    :initform 0.0))
)

(cl:defclass StabData (<StabData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StabData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StabData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie-msg:<StabData> is deprecated: use crazyflie-msg:StabData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StabData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie-msg:header-val is deprecated.  Use crazyflie-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <StabData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie-msg:thrust-val is deprecated.  Use crazyflie-msg:thrust instead.")
  (thrust m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <StabData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie-msg:yaw-val is deprecated.  Use crazyflie-msg:yaw instead.")
  (yaw m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <StabData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie-msg:pitch-val is deprecated.  Use crazyflie-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <StabData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie-msg:roll-val is deprecated.  Use crazyflie-msg:roll instead.")
  (roll m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StabData>) ostream)
  "Serializes a message object of type '<StabData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'thrust)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'thrust)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'yaw))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StabData>) istream)
  "Deserializes a message object of type '<StabData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'thrust)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'thrust)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'yaw) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'pitch) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roll) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StabData>)))
  "Returns string type for a message object of type '<StabData>"
  "crazyflie/StabData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StabData)))
  "Returns string type for a message object of type 'StabData"
  "crazyflie/StabData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StabData>)))
  "Returns md5sum for a message object of type '<StabData>"
  "ee0d4d9a67a435a0cb48e7a79dd62464")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StabData)))
  "Returns md5sum for a message object of type 'StabData"
  "ee0d4d9a67a435a0cb48e7a79dd62464")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StabData>)))
  "Returns full string definition for message of type '<StabData>"
  (cl:format cl:nil "Header header~%uint16 thrust~%float32 yaw~%float32 pitch~%float32 roll~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StabData)))
  "Returns full string definition for message of type 'StabData"
  (cl:format cl:nil "Header header~%uint16 thrust~%float32 yaw~%float32 pitch~%float32 roll~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StabData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     2
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StabData>))
  "Converts a ROS message object to a list"
  (cl:list 'StabData
    (cl:cons ':header (header msg))
    (cl:cons ':thrust (thrust msg))
    (cl:cons ':yaw (yaw msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':roll (roll msg))
))
