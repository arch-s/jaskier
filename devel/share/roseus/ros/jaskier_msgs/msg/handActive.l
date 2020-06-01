;; Auto-generated. Do not edit!


(when (boundp 'jaskier_msgs::handActive)
  (if (not (find-package "JASKIER_MSGS"))
    (make-package "JASKIER_MSGS"))
  (shadow 'handActive (find-package "JASKIER_MSGS")))
(unless (find-package "JASKIER_MSGS::HANDACTIVE")
  (make-package "JASKIER_MSGS::HANDACTIVE"))

(in-package "ROS")
;;//! \htmlinclude handActive.msg.html


(defclass jaskier_msgs::handActive
  :super ros::object
  :slots (_hand_active ))

(defmethod jaskier_msgs::handActive
  (:init
   (&key
    ((:hand_active __hand_active) nil)
    )
   (send-super :init)
   (setq _hand_active __hand_active)
   self)
  (:hand_active
   (&optional __hand_active)
   (if __hand_active (setq _hand_active __hand_active)) _hand_active)
  (:serialization-length
   ()
   (+
    ;; bool _hand_active
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _hand_active
       (if _hand_active (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _hand_active
     (setq _hand_active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get jaskier_msgs::handActive :md5sum-) "1387d0fd59a787e8568976617c630546")
(setf (get jaskier_msgs::handActive :datatype-) "jaskier_msgs/handActive")
(setf (get jaskier_msgs::handActive :definition-)
      "# Indicates if the hand is in an active state

# true if hand is active (i.e. not by the user's side)
bool hand_active

")



(provide :jaskier_msgs/handActive "1387d0fd59a787e8568976617c630546")


