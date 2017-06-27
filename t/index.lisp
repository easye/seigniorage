(in-package :cl-user)

(prove:plan 1)

(let ((result
       (jeannie:read-rdf 
        (asdf:system-relative-pathname :seigniorage
                                       "model/bitcoin.n3"))))
  (prove:ok result
            "Testing reading of Bitcoin model…"))


(prove:plan 1)
(let ((result
       (jeannie:read-rdf 
        (asdf:system-relative-pathname :seigniorage
                                       "model/ethereum.n3"))))
  (prove:ok result
            "Testing reading of Ethereum model…"))

(prove:finalize)

