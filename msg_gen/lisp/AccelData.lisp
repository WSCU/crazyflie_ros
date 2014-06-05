; Auto-generated. Do not edit!


(cl:in-package crazyflie-msg)


;//! \htmlinclude AccelData.msg.html

(cl:defclass <AccelData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass AccelData (<AccelData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AccelData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AccelData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name crazyflie-msg:<AccelData> is deprecated: use crazyflie-msg:AccelData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AccelData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie-msg:header-val is deprecated.  Use crazyflie-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <AccelData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie-msg:x-val is deprecated.  Use crazyflie-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <AccelData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie-msg:y-val is deprecated.  Use crazyflie-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <AccelData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader crazyflie-msg:z-val is deprecated.  Use crazyflie-msg:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AccelData>) ostream)
  "Serializes a message object of type '<AccelData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AccelData>) istream)
  "Deserializes a message object of type '<AccelData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AccelData>)))
  "Returns string type for a message object of type '<AccelData>"
  "crazyflie/AccelData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AccelData)))
  "Returns string type for a message object of type 'AccelData"
  "crazyflie/AccelData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AccelData>)))
  "Returns md5sum for a message object of type '<AccelData>"
  "75f40115cb5a29c0ceea66f491a5e1a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AccelData)))
  "Returns md5sum for a message object of type 'AccelData"
  "75f40115cb5a29c0ceea66f491a5e1a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AccelData>)))
  "Returns full string definition for message of type '<AccelData>"
  (cl:format cl:nil "Header header~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AccelData)))
  "Returns full string definition for message of type 'AccelData"
  (cl:format cl:nil "Header header~%float32 x~%float32 y~%float32 z~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AccelData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AccelData>))
  "Converts a ROS message object to a list"
  (cl:list 'AccelData
    (cl:cons ':header (header msg))
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
