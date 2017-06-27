;;; Index

(in-package :seigniorage)

(defmethod index ((seigniorage (eql :seigniorage)))
  (directory 
   (merge-pathnames #p"model/*.n3"
                    (asdf/system:system-source-directory
                     (asdf:find-system :seigniorage)))))

