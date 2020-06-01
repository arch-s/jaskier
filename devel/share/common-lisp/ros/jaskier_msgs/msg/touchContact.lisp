; Auto-generated. Do not edit!


(cl:in-package jaskier_msgs-msg)


;//! \htmlinclude touchContact.msg.html

(cl:defclass <touchContact> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass touchContact (<touchContact>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <touchContact>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'touchContact)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaskier_msgs-msg:<touchContact> is deprecated: use jaskier_msgs-msg:touchContact instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <touchContact>) ostream)
  "Serializes a message object of type '<touchContact>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <touchContact>) istream)
  "Deserializes a message object of type '<touchContact>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<touchContact>)))
  "Returns string type for a message object of type '<touchContact>"
  "jaskier_msgs/touchContact")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'touchContact)))
  "Returns string type for a message object of type 'touchContact"
  "jaskier_msgs/touchContact")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<touchContact>)))
  "Returns md5sum for a message object of type '<touchContact>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'touchContact)))
  "Returns md5sum for a message object of type 'touchContact"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<touchContact>)))
  "Returns full string definition for message of type '<touchContact>"
  (cl:format cl:nil "# Indicates which fingertips are touching and the proximity of the contact~%~%# TODO: determine how to store finger touch data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'touchContact)))
  "Returns full string definition for message of type 'touchContact"
  (cl:format cl:nil "# Indicates which fingertips are touching and the proximity of the contact~%~%# TODO: determine how to store finger touch data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <touchContact>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <touchContact>))
  "Converts a ROS message object to a list"
  (cl:list 'touchContact
))
