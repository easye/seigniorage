(defpackage :org.not.seigniorage 
  (:nicknames :seigniorage)
  (:use #:cl)
  (:export 
   #:fetch
   #:index 

   #:nth-block

   ;;; Verify a given block of the blockchain by transcribing its futures
   #:block-verify))

(defpackage :org.not.seigniorage.test 
  (:nicknames "seigniorage-test")
  (:use :cl :rt :org.not.seigniorage)
  (:export 
   #:invoke))

