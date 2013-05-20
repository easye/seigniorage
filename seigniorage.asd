;;; -*- Mode: LISP; Syntax: COMMON-LISP -*-
(require :asdf)

;;     :documentation "urn:seignorage rdfs:seeAlso <http://abcl.org/home/evenson/bitcoin.lisp> ."
(asdf:defsystem 
    :seignorage 
    :version "0.2.0" 
    :components ((:module bitcoin 
                  :components ((:file "api")))))

