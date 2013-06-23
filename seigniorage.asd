;;; -*- Mode: LISP; Syntax: COMMON-LISP -*-
(require :asdf)

;; :documentation "urn:seignorage rdfs:seeAlso <http://abcl.org/home/evenson/bitcoin.lisp> ."
(asdf:defsystem :seigniorage 
  :version "0.2.1" 
  :components ((:module bitcoin 
                        :components ((:file "api")))))


(asdf:defsystem :seigniorage.model
  :version "0.1" 
  :system-depends-on (abcl-contrib jeannie)
  :components ((:module bitcoin 
                        :components ((:file "model")))))
  


