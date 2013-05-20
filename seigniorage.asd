;;; -*- Mode: LISP; Syntax: COMMON-LISP -*-
(require :asdf)

(asdf:defsystem 
    :seignorage 
    :documentation "urn:seignorage rdfs:seeAlso <http://abcl.org/home/evenson/bitcoin.lisp> ."
    :version "0.2.0" 
    :components ((:module source 
                  :pathname "http://abcl.org/home/evenson/bitcoin.lisp" 
                  :components ((:file "bitcoin")))))


