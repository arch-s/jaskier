; Auto-generated. Do not edit!


(cl:in-package jaskier_msgs-msg)


;//! \htmlinclude ultraTimeStamp.msg.html

(cl:defclass <ultraTimeStamp> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type (cl:vector cl:real)
   :initform (cl:make-array 5 :element-type 'cl:real :initial-element 0)))
)

(cl:defclass ultraTimeStamp (<ultraTimeStamp>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ultraTimeStamp>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ultraTimeStamp)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaskier_msgs-msg:<ultraTimeStamp> is deprecated: use jaskier_msgs-msg:ultraTimeStamp instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ultraTimeStamp>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaskier_msgs-msg:stamp-val is deprecated.  Use jaskier_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ultraTimeStamp>) ostream)
  "Serializes a message object of type '<ultraTimeStamp>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__sec (cl:floor ele))
        (__nsec (cl:round (cl:* 1e9 (cl:- ele (cl:floor ele))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream)))
   (cl:slot-value msg 'stamp))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ultraTimeStamp>) istream)
  "Deserializes a message object of type '<ultraTimeStamp>"
  (cl:setf (cl:slot-value msg 'stamp) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'stamp)))
    (cl:dotimes (i 5)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ultraTimeStamp>)))
  "Returns string type for a message object of type '<ultraTimeStamp>"
  "jaskier_msgs/ultraTimeStamp")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ultraTimeStamp)))
  "Returns string type for a message object of type 'ultraTimeStamp"
  "jaskier_msgs/ultraTimeStamp")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ultraTimeStamp>)))
  "Returns md5sum for a message object of type '<ultraTimeStamp>"
  "1937f5302cea0024ac517264ca4dda57")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ultraTimeStamp)))
  "Returns md5sum for a message object of type 'ultraTimeStamp"
  "1937f5302cea0024ac517264ca4dda57")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ultraTimeStamp>)))
  "Returns full string definition for message of type '<ultraTimeStamp>"
  (cl:format cl:nil "# timestamps for ultrasonic module~%# [0] - when tx pulse is sent~%# [1-4] - when rx detects pulse~%~%time[5] stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ultraTimeStamp)))
  "Returns full string definition for message of type 'ultraTimeStamp"
  (cl:format cl:nil "# timestamps for ultrasonic module~%# [0] - when tx pulse is sent~%# [1-4] - when rx detects pulse~%~%time[5] stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ultraTimeStamp>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'stamp) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ultraTimeStamp>))
  "Converts a ROS message object to a list"
  (cl:list 'ultraTimeStamp
    (cl:cons ':stamp (stamp msg))
))
