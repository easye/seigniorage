(in-package :btc)

(defun index ()
  (jena:read-rdf 
   (asdf:system-relative-pathname :bitcoin
                                  "model/bitcoin.n3")))


