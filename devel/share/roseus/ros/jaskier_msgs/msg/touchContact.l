;; Auto-generated. Do not edit!


(when (boundp 'jaskier_msgs::touchContact)
  (if (not (find-package "JASKIER_MSGS"))
    (make-package "JASKIER_MSGS"))
  (shadow 'touchContact (find-package "JASKIER_MSGS")))
(unless (find-package "JASKIER_MSGS::TOUCHCONTACT")
  (make-package "JASKIER_MSGS::TOUCHCONTACT"))

(in-package "ROS")
;;//! \htmlinclude touchContact.msg.html


(defclass jaskier_msgs::touchContact
  :super ros::object
  :slots ())

(defmethod jaskier_msgs::touchContact
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get jaskier_msgs::touchContact :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get jaskier_msgs::touchContact :datatype-) "jaskier_msgs/touchContact")
(setf (get jaskier_msgs::touchContact :definition-)
      "# Indicates which fingertips are touching and the proximity of the contact

# TODO: determine how to store finger touch data

")



(provide :jaskier_msgs/touchContact "d41d8cd98f00b204e9800998ecf8427e")


