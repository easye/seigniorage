;;; -*- Mode: LISP; Syntax: COMMON-LISP -*-

(require :asdf)
#+abcl
(eval-when (:compile-toplevel :load-toplevel :execute) 
  (require :abcl-contrib)
  (asdf:load-system :quicklisp-abcl))

;; :documentation "urn:seignorage rdfs:seeAlso <http://abcl.org/home/evenson/bitcoin.lisp> ."
(asdf:defsystem :seigniorage 
  :version "0.3.0" 
  :defsystem-depends-on (rt)
  :components ((:module src 
                        :components ((:file "package")
                                     (:file "index")))
               (:module bitcoin 
                        :depends-on (src)
                        :components ((:file "api")))))

#-abcl (warn "Not loading model: currently need the Bear. <http://abcl.org>.")
#+abcl
(asdf:defsystem :seigniorage/model
  :version "0.0.2" 
  :defsystem-depends-on (seigniorage
                         jeannie)  ;;; rdfs:seeAlso <http:/bitbucket.org/easye/jeannie/> 
  :components ((:module bitcoin 
                        :components ((:file "model")))))
  
(asdf:defsystem :seigniorage/test
  :version "0.0.1" 
  :depends-on (seigniorage/model seigniorage)
  :components ((:module test :pathname "test"
                        :components ((:file "index")))))

;;;  Run manually via (asdf:operate 'asdf:test-op :seigniorage.test :force t)
(defmethod asdf:perform ((o asdf:test-op) (c (eql (asdf:find-system :seigniorage))))
  (asdf:load-system (asdf:find-system :seigniorage/test))
  (funcall (intern (symbol-name 'invoke) :org.not.seigniorage.test)))
