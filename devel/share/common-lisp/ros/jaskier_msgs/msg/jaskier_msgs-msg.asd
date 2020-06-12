
(cl:in-package :asdf)

(defsystem "jaskier_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "fingerADC" :depends-on ("_package_fingerADC"))
    (:file "_package_fingerADC" :depends-on ("_package"))
    (:file "handActive" :depends-on ("_package_handActive"))
    (:file "_package_handActive" :depends-on ("_package"))
    (:file "touchContact" :depends-on ("_package_touchContact"))
    (:file "_package_touchContact" :depends-on ("_package"))
    (:file "ultraTimeStamp" :depends-on ("_package_ultraTimeStamp"))
    (:file "_package_ultraTimeStamp" :depends-on ("_package"))
  ))