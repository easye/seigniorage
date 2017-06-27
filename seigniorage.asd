;;; -*- Mode: LISP; Syntax: COMMON-LISP -*-

#-abcl (warn "Currently needs the Bear. <http://abcl.org>.")
(eval-when (:compile-toplevel :load-toplevel :execute) 
  (require :abcl-contrib)
  (asdf:load-system :quicklisp-abcl))

;; :documentation "urn:seignorage rdfs:seeAlso <http://abcl.org/home/evenson/bitcoin.lisp> ."
(defsystem seigniorage 
  :version "0.4.0" 
  :depends-on (jeannie)
  :components ((:module src 
                        :components ((:file "package")
                                     (:file "index"))))
  :in-order-to ((test-op (test-op seigniorage/t))))

(defsystem seigniorage/t
  :version "0.4.0" 
  :defsystem-depends-on (prove-asdf)
  :depends-on (seigniorage
               seigniorage/bitcoin
               seigniorage/ethereum
               prove)

  :components ((:module t
                        :components ((:test-file "index"))))
  :perform (test-op (op c)
                    (uiop:symbol-call :prove-asdf 'run-test-system c)))

(defsystem seigniorage/secp256k1
  :version "0.0.1"
  :components ((:module source
                        :pathname "src/secp256k1/"
                        :components ((:file "index")
                                     (:file "secp256k1")))))

(defsystem seigniorage/bitcoin
  :version "0.0.1"
  :depends-on (seigniorage/secp256k1)
  :components ((:module model :pathname "model/"
                        :components ((:static-file "bitcoin.n3")))
               (:module source :pathname "src/bitcoin/"
                        :components ((:file "bitcoin")
                                     (:file "api")
                                     (:file "model")))))
  
(asdf:defsystem seigniorage/ethereum
  :version "0.0.1"
  :components ((:module model 
                        :components ((:static-file "ethereum.n3")))
               (:module source :pathname "src/ethereum/"
                        :components ((:file "model")))))




