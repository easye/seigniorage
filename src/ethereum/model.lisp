(defpackage :eve
  (:nicknames :org.not.seigniorage.ethereum :eve)
  (:use #:cl))
(in-package :eve)

(defmethod index ((subpart (eql :seigniorage/ethereum eve)))
  (asdf:system-relative-pathname :eve "model/ethereum.n3"))

                                 
