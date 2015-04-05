(in-package :org.not.seigniorage)

(defgeneric nth-block (nth block)
  (:documentation "Request the NTH BLOCK from from the network")
  (:method (n chain)
    (nth n (fetch chain))))

(defgeneric verify (chain  &key async)
  (:documentation "Verify bitcoin block CHAIN

When ASYNC return a description of the steps necessary for its
computation expressed as futures as the second value, and a promise
for its computation as the third.")
  (:method (chain &key (async t))
    (let ((index :latest))
      (warn "Unimplemented ~A." index))))

(defgeneric index (uri &key)
  (:method (uri &key pathname)
    (make-pathname 
     :defaults (if (pathname pathname)
                   (merge-pathnames uri pathname)
                   (pathname uri))))
  (:method (uri &key nth)
    (nth-block nth (truename uri)))
  (:method (uri &key (index t))
    (declare (ignore index uri))
    (directory 
     (make-pathname :name "*" :type "*" 
      :defaults (cond
                  ((find :darwin *features*)
                   (merge-pathnames "Library/Application Support/Bitcoin/"
                                    (user-homedir-pathname)))
                  ((or (find :windows *features*) ;;; XXX implement me!
                       t)
                   (merge-pathnames "~/.bitcoin/" (user-homedir-pathname))))))))
  
(defgeneric fetch (block)
  (:documentation "Request the block from from the network"))

