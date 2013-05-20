(defpackage #:not.org.seigniorage 
  (:use #:cl #:sys)
  (:export 
   #:fetch #:nth
   #:index 
   #:verify))

(in-package #:not.org.seigniorage)

#+nil
(defgeneric index (uri)
    (:method (&key (uri uri)) (make-pathname uri)))

(defun index ()
  (directory 
   (make-pathname 
    :name "*" :type "*" 
    :defaults 
    ;; OS X
    (merge-pathnames "Library/Application Support/Bitcoin/"
                     (user-homedir-pathname)))))

(defgeneric verify (chain) 
  (:documentation "Verify bitcoin CHAIN of hashes expressed as futures.")
  (:method (chain)
    (let ((index :latest))
      (warn "Unimplemented."))))

(defgeneric fetch (block)
  (:documentation "Request the block from from the network"))

(defgeneric nth (n))



    
