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
  :slots (_distance _thresh ))

(defmethod jaskier_msgs::touchContact
  (:init
   (&key
    ((:distance __distance) (make-array 5 :initial-element 0.0 :element-type :float))
    ((:thresh __thresh) 0.0)
    )
   (send-super :init)
   (setq _distance __distance)
   (setq _thresh (float __thresh))
   self)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:thresh
   (&optional __thresh)
   (if __thresh (setq _thresh __thresh)) _thresh)
  (:serialization-length
   ()
   (+
    ;; float64[5] _distance
    (* 8    5)
    ;; float64 _thresh
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[5] _distance
     (dotimes (i 5)
       (sys::poke (elt _distance i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64 _thresh
       (sys::poke _thresh (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[5] _distance
   (dotimes (i (length _distance))
     (setf (elt _distance i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64 _thresh
     (setq _thresh (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get jaskier_msgs::touchContact :md5sum-) "3aae430fea1916af49e822715e516338")
(setf (get jaskier_msgs::touchContact :datatype-) "jaskier_msgs/touchContact")
(setf (get jaskier_msgs::touchContact :definition-)
      "# Indicates which fingertips are touching and the proximity of the contact

float64[5] distance
float64 thresh

")



(provide :jaskier_msgs/touchContact "3aae430fea1916af49e822715e516338")


