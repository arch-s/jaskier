;; Auto-generated. Do not edit!


(when (boundp 'jaskier_msgs::ultraTimeStamp)
  (if (not (find-package "JASKIER_MSGS"))
    (make-package "JASKIER_MSGS"))
  (shadow 'ultraTimeStamp (find-package "JASKIER_MSGS")))
(unless (find-package "JASKIER_MSGS::ULTRATIMESTAMP")
  (make-package "JASKIER_MSGS::ULTRATIMESTAMP"))

(in-package "ROS")
;;//! \htmlinclude ultraTimeStamp.msg.html


(defclass jaskier_msgs::ultraTimeStamp
  :super ros::object
  :slots (_stamp ))

(defmethod jaskier_msgs::ultraTimeStamp
  (:init
   (&key
    ((:stamp __stamp) (let (r) (dotimes (i 5) (push (instance ros::time :init) r)) r))
    )
   (send-super :init)
   (setq _stamp __stamp)
   self)
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:serialization-length
   ()
   (+
    ;; time[5] _stamp
    (* 8    5)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time[5] _stamp
     (dotimes (i 5)
       (write-long (send (elt _stamp i) :sec) s) (write-long (send (elt _stamp i) :nsec) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time[5] _stamp
   (dotimes (i (length _stamp))
     (send (elt _stamp i) :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send (elt _stamp i) :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get jaskier_msgs::ultraTimeStamp :md5sum-) "1937f5302cea0024ac517264ca4dda57")
(setf (get jaskier_msgs::ultraTimeStamp :datatype-) "jaskier_msgs/ultraTimeStamp")
(setf (get jaskier_msgs::ultraTimeStamp :definition-)
      "# timestamps for ultrasonic module
# [0] - when tx pulse is sent
# [1-4] - when rx detects pulse

time[5] stamp

")



(provide :jaskier_msgs/ultraTimeStamp "1937f5302cea0024ac517264ca4dda57")


