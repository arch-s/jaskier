;; Auto-generated. Do not edit!


(when (boundp 'jaskier_msgs::tipCoords)
  (if (not (find-package "JASKIER_MSGS"))
    (make-package "JASKIER_MSGS"))
  (shadow 'tipCoords (find-package "JASKIER_MSGS")))
(unless (find-package "JASKIER_MSGS::TIPCOORDS")
  (make-package "JASKIER_MSGS::TIPCOORDS"))

(in-package "ROS")
;;//! \htmlinclude tipCoords.msg.html


(defclass jaskier_msgs::tipCoords
  :super ros::object
  :slots (_thumb _index _middle _ring _little ))

(defmethod jaskier_msgs::tipCoords
  (:init
   (&key
    ((:thumb __thumb) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:index __index) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:middle __middle) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:ring __ring) (make-array 3 :initial-element 0.0 :element-type :float))
    ((:little __little) (make-array 3 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _thumb __thumb)
   (setq _index __index)
   (setq _middle __middle)
   (setq _ring __ring)
   (setq _little __little)
   self)
  (:thumb
   (&optional __thumb)
   (if __thumb (setq _thumb __thumb)) _thumb)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:middle
   (&optional __middle)
   (if __middle (setq _middle __middle)) _middle)
  (:ring
   (&optional __ring)
   (if __ring (setq _ring __ring)) _ring)
  (:little
   (&optional __little)
   (if __little (setq _little __little)) _little)
  (:serialization-length
   ()
   (+
    ;; float64[3] _thumb
    (* 8    3)
    ;; float64[3] _index
    (* 8    3)
    ;; float64[3] _middle
    (* 8    3)
    ;; float64[3] _ring
    (* 8    3)
    ;; float64[3] _little
    (* 8    3)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64[3] _thumb
     (dotimes (i 3)
       (sys::poke (elt _thumb i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _index
     (dotimes (i 3)
       (sys::poke (elt _index i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _middle
     (dotimes (i 3)
       (sys::poke (elt _middle i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _ring
     (dotimes (i 3)
       (sys::poke (elt _ring i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[3] _little
     (dotimes (i 3)
       (sys::poke (elt _little i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64[3] _thumb
   (dotimes (i (length _thumb))
     (setf (elt _thumb i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _index
   (dotimes (i (length _index))
     (setf (elt _index i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _middle
   (dotimes (i (length _middle))
     (setf (elt _middle i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _ring
   (dotimes (i (length _ring))
     (setf (elt _ring i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; float64[3] _little
   (dotimes (i (length _little))
     (setf (elt _little i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;;
   self)
  )

(setf (get jaskier_msgs::tipCoords :md5sum-) "16c13f95c15ab83cb390e0132a0d1f39")
(setf (get jaskier_msgs::tipCoords :datatype-) "jaskier_msgs/tipCoords")
(setf (get jaskier_msgs::tipCoords :definition-)
      "# stores fingertip coordinates

float64[3] thumb
float64[3] index
float64[3] middle
float64[3] ring
float64[3] little

")



(provide :jaskier_msgs/tipCoords "16c13f95c15ab83cb390e0132a0d1f39")


