(defpackage :org.not.seigniorage 
  (:nicknames "seigniorage")
  (:use #:cl)
  (:export 
   #:fetch
   #:index 

   #:nth-block

   ;;; Semantically verify a given blockchain by transcribing its futures
   #:verify))

(defpackage :org.not.seigniorage.test 
  (:nicknames "seigniorage-test")
  (:use :cl :rt :org.not.seigniorage)
  (:export 
   #:invoke))

