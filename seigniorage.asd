;;; -*- Mode: LISP; Syntax: COMMON-LISP -*-
(require :asdf)

;; :documentation "urn:seignorage rdfs:seeAlso <http://abcl.org/home/evenson/bitcoin.lisp> ."
(asdf:defsystem :seigniorage 
  :version "0.2.1" 
  :components ((:module bitcoin 
                        :components ((:file "api")))))

#-abcl (error "Currently need the Bear. <http://abcl.org>.")
#+abcl (require :abcl-contrib)
(asdf:defsystem :seigniorage.model
  :version "0.1" 
  :defsystem-depends-on (jeannie)
  :components ((:module bitcoin 
                        :components ((:file "model")))))
  


