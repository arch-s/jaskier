; Auto-generated. Do not edit!


(cl:in-package jaskier_msgs-msg)


;//! \htmlinclude touchContact.msg.html

(cl:defclass <touchContact> (roslisp-msg-protocol:ros-message)
  ((distance
    :reader distance
    :initarg :distance
    :type (cl:vector cl:float)
   :initform (cl:make-array 5 :element-type 'cl:float :initial-element 0.0))
   (thresh
    :reader thresh
    :initarg :thresh
    :type cl:float
    :initform 0.0))
)

(cl:defclass touchContact (<touchContact>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <touchContact>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'touchContact)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaskier_msgs-msg:<touchContact> is deprecated: use jaskier_msgs-msg:touchContact instead.")))

(cl:ensure-generic-function 'distance-val :lambda-list '(m))
(cl:defmethod distance-val ((m <touchContact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaskier_msgs-msg:distance-val is deprecated.  Use jaskier_msgs-msg:distance instead.")
  (distance m))

(cl:ensure-generic-function 'thresh-val :lambda-list '(m))
(cl:defmethod thresh-val ((m <touchContact>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaskier_msgs-msg:thresh-val is deprecated.  Use jaskier_msgs-msg:thresh instead.")
  (thresh m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <touchContact>) ostream)
  "Serializes a message object of type '<touchContact>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'distance))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'thresh))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <touchContact>) istream)
  "Deserializes a message object of type '<touchContact>"
  (cl:setf (cl:slot-value msg 'distance) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'distance)))
    (cl:dotimes (i 5)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thresh) (roslisp-utils:decode-double-float-bits bits)))
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
  "3aae430fea1916af49e822715e516338")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'touchContact)))
  "Returns md5sum for a message object of type 'touchContact"
  "3aae430fea1916af49e822715e516338")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<touchContact>)))
  "Returns full string definition for message of type '<touchContact>"
  (cl:format cl:nil "# Indicates which fingertips are touching and the proximity of the contact~%~%float64[5] distance~%float64 thresh~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'touchContact)))
  "Returns full string definition for message of type 'touchContact"
  (cl:format cl:nil "# Indicates which fingertips are touching and the proximity of the contact~%~%float64[5] distance~%float64 thresh~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <touchContact>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'distance) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <touchContact>))
  "Converts a ROS message object to a list"
  (cl:list 'touchContact
    (cl:cons ':distance (distance msg))
    (cl:cons ':thresh (thresh msg))
))
