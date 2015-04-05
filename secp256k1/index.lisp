(defpackage :org.not.seigniorage.secp256k1
  (:nicknames :secp256k1)
  (:use :cl :seigniorage)
  (:export #:verify #:sign
           #:*secp256k1*))

(in-package :secp256k1)

(defgeneric verify (message signature public-key)
  (:documentation "Verify signature."))

(defgeneric sign (message signature private-key nonce)
  (:documentation "Sign message."))
