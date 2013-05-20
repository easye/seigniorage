(defpackage #:not.org.seigniorage 
  (:use #:cl)
  (:export 
   #:fetch
   #:index 
   #:verify))

(in-package #:not.org.seigniorage)

(defgeneric fetch-nth (nth block)
  (:documentation "Request the NTH BLOCK from from the network"))

(defgeneric verify (chain) 
  (:documentation "Verify bitcoin CHAIN of hashes expressed as futures.")
  (:method (chain)
    (let ((index :latest))
      (warn "Unimplemented ~A." index))))

(defgeneric index (uri &key)
  (:method (uri &key (pathname pathname))
    (make-pathname 
     :defaults (if (pathname pathname)
                   (merge-pathnames uri pathname)
                   (pathname uri))))
  (:method (uri &key (nth nth))
    (fetch-nth nth block-0))
  (:method (uri &key (index t))
    (declare (ignore index uri))
    (directory 
     (make-pathname 
      :name "*" :type "*" 
      :defaults 
      (cond
        ((find :darwin *features*)
         (merge-pathnames "Library/Application Support/Bitcoin/"
                          (user-homedir-pathname)))
        (t 
         (merge-pathnames "~/.bitcoin/" (user-homedir-pathname))))))))
  




    
