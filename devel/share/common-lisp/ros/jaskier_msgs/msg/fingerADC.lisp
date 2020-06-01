; Auto-generated. Do not edit!


(cl:in-package jaskier_msgs-msg)


;//! \htmlinclude fingerADC.msg.html

(cl:defclass <fingerADC> (roslisp-msg-protocol:ros-message)
  ((adcVals
    :reader adcVals
    :initarg :adcVals
    :type (cl:vector cl:integer)
   :initform (cl:make-array 5 :element-type 'cl:integer :initial-element 0))
   (adcMin
    :reader adcMin
    :initarg :adcMin
    :type cl:integer
    :initform 0)
   (adcMax
    :reader adcMax
    :initarg :adcMax
    :type cl:integer
    :initform 0))
)

(cl:defclass fingerADC (<fingerADC>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <fingerADC>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'fingerADC)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name jaskier_msgs-msg:<fingerADC> is deprecated: use jaskier_msgs-msg:fingerADC instead.")))

(cl:ensure-generic-function 'adcVals-val :lambda-list '(m))
(cl:defmethod adcVals-val ((m <fingerADC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaskier_msgs-msg:adcVals-val is deprecated.  Use jaskier_msgs-msg:adcVals instead.")
  (adcVals m))

(cl:ensure-generic-function 'adcMin-val :lambda-list '(m))
(cl:defmethod adcMin-val ((m <fingerADC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaskier_msgs-msg:adcMin-val is deprecated.  Use jaskier_msgs-msg:adcMin instead.")
  (adcMin m))

(cl:ensure-generic-function 'adcMax-val :lambda-list '(m))
(cl:defmethod adcMax-val ((m <fingerADC>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader jaskier_msgs-msg:adcMax-val is deprecated.  Use jaskier_msgs-msg:adcMax instead.")
  (adcMax m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <fingerADC>) ostream)
  "Serializes a message object of type '<fingerADC>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'adcVals))
  (cl:let* ((signed (cl:slot-value msg 'adcMin)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'adcMax)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <fingerADC>) istream)
  "Deserializes a message object of type '<fingerADC>"
  (cl:setf (cl:slot-value msg 'adcVals) (cl:make-array 5))
  (cl:let ((vals (cl:slot-value msg 'adcVals)))
    (cl:dotimes (i 5)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'adcMin) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'adcMax) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<fingerADC>)))
  "Returns string type for a message object of type '<fingerADC>"
  "jaskier_msgs/fingerADC")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'fingerADC)))
  "Returns string type for a message object of type 'fingerADC"
  "jaskier_msgs/fingerADC")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<fingerADC>)))
  "Returns md5sum for a message object of type '<fingerADC>"
  "684db9cd25303adefa48e14d9ffba24a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'fingerADC)))
  "Returns md5sum for a message object of type 'fingerADC"
  "684db9cd25303adefa48e14d9ffba24a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<fingerADC>)))
  "Returns full string definition for message of type '<fingerADC>"
  (cl:format cl:nil "# ADC values for each finger joint, and the min and max of seen adc vals~%~%# The order is thumb, index, middle, ring, little~%int32[5] adcVals~%int32 adcMin~%int32 adcMax~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'fingerADC)))
  "Returns full string definition for message of type 'fingerADC"
  (cl:format cl:nil "# ADC values for each finger joint, and the min and max of seen adc vals~%~%# The order is thumb, index, middle, ring, little~%int32[5] adcVals~%int32 adcMin~%int32 adcMax~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <fingerADC>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'adcVals) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <fingerADC>))
  "Converts a ROS message object to a list"
  (cl:list 'fingerADC
    (cl:cons ':adcVals (adcVals msg))
    (cl:cons ':adcMin (adcMin msg))
    (cl:cons ':adcMax (adcMax msg))
))
