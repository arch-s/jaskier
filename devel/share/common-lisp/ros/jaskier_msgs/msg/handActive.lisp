; Auto-generated. Do not edit!


(cl:in-package jaskier_msgs-msg)


;//! \htmlinclude handActive.msg.html

(cl:defclass <handActive> (roslisp-msg-protocol:ros-message)
  ((hand_active
    :reader hand_active
    :initarg :hand_active
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass handActive (<handActive>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <handActive>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'handActive)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaskier_msgs-msg:<handActive> is deprecated: use jaskier_msgs-msg:handActive instead.")))

(cl:ensure-generic-function 'hand_active-val :lambda-list '(m))
(cl:defmethod hand_active-val ((m <handActive>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaskier_msgs-msg:hand_active-val is deprecated.  Use jaskier_msgs-msg:hand_active instead.")
  (hand_active m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <handActive>) ostream)
  "Serializes a message object of type '<handActive>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'hand_active) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <handActive>) istream)
  "Deserializes a message object of type '<handActive>"
    (cl:setf (cl:slot-value msg 'hand_active) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<handActive>)))
  "Returns string type for a message object of type '<handActive>"
  "jaskier_msgs/handActive")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'handActive)))
  "Returns string type for a message object of type 'handActive"
  "jaskier_msgs/handActive")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<handActive>)))
  "Returns md5sum for a message object of type '<handActive>"
  "1387d0fd59a787e8568976617c630546")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'handActive)))
  "Returns md5sum for a message object of type 'handActive"
  "1387d0fd59a787e8568976617c630546")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<handActive>)))
  "Returns full string definition for message of type '<handActive>"
  (cl:format cl:nil "# Indicates if the hand is in an active state~%~%# true if hand is active (i.e. not by the user's side)~%bool hand_active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'handActive)))
  "Returns full string definition for message of type 'handActive"
  (cl:format cl:nil "# Indicates if the hand is in an active state~%~%# true if hand is active (i.e. not by the user's side)~%bool hand_active~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <handActive>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <handActive>))
  "Converts a ROS message object to a list"
  (cl:list 'handActive
    (cl:cons ':hand_active (hand_active msg))
))
