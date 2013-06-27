(in-package :org.not.seigniorage.test)

(deftest model.1 
    (let ((result
           (jena:read-rdf 
            (asdf:system-relative-pathname :seigniorage.model
                                           "bitcoin.n3"))))
      (values t result))
  (t t))

(defun invoke ()
  (do-test 'model.1))
