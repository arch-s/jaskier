;; Auto-generated. Do not edit!


(when (boundp 'jaskier_msgs::fingerADC)
  (if (not (find-package "JASKIER_MSGS"))
    (make-package "JASKIER_MSGS"))
  (shadow 'fingerADC (find-package "JASKIER_MSGS")))
(unless (find-package "JASKIER_MSGS::FINGERADC")
  (make-package "JASKIER_MSGS::FINGERADC"))

(in-package "ROS")
;;//! \htmlinclude fingerADC.msg.html


(defclass jaskier_msgs::fingerADC
  :super ros::object
  :slots (_adcVals _adcMin _adcMax ))

(defmethod jaskier_msgs::fingerADC
  (:init
   (&key
    ((:adcVals __adcVals) (make-array 5 :initial-element 0 :element-type :integer))
    ((:adcMin __adcMin) 0)
    ((:adcMax __adcMax) 0)
    )
   (send-super :init)
   (setq _adcVals __adcVals)
   (setq _adcMin (round __adcMin))
   (setq _adcMax (round __adcMax))
   self)
  (:adcVals
   (&optional __adcVals)
   (if __adcVals (setq _adcVals __adcVals)) _adcVals)
  (:adcMin
   (&optional __adcMin)
   (if __adcMin (setq _adcMin __adcMin)) _adcMin)
  (:adcMax
   (&optional __adcMax)
   (if __adcMax (setq _adcMax __adcMax)) _adcMax)
  (:serialization-length
   ()
   (+
    ;; int32[5] _adcVals
    (* 4    5)
    ;; int32 _adcMin
    4
    ;; int32 _adcMax
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32[5] _adcVals
     (dotimes (i 5)
       (write-long (elt _adcVals i) s)
       )
     ;; int32 _adcMin
       (write-long _adcMin s)
     ;; int32 _adcMax
       (write-long _adcMax s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32[5] _adcVals
   (dotimes (i (length _adcVals))
     (setf (elt _adcVals i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;; int32 _adcMin
     (setq _adcMin (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _adcMax
     (setq _adcMax (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get jaskier_msgs::fingerADC :md5sum-) "684db9cd25303adefa48e14d9ffba24a")
(setf (get jaskier_msgs::fingerADC :datatype-) "jaskier_msgs/fingerADC")
(setf (get jaskier_msgs::fingerADC :definition-)
      "# ADC values for each finger joint, and the min and max of seen adc vals

# The order is thumb, index, middle, ring, little
int32[5] adcVals
int32 adcMin
int32 adcMax

")



(provide :jaskier_msgs/fingerADC "684db9cd25303adefa48e14d9ffba24a")


