(defpackage seigniorage
  (:nicknames :org.not.seigniorage)
  (:use #:cl)

  ;;; BTC specific; refactor
  (:export 
   #:fetch
   #:index 

   #:nth-block

   ;;; Verify a given block of the blockchain by transcribing its futures
   #:block-verify))


