(asdf:defsystem :bitcoinj
  :defsystem-depends-on (abcl-asdf)
  ;; :pathname
  ;; <http://bitcoinj.github.io>
  ;; "git+https://code.google.com/p/bitcoinj/"
  :components ((:mvn
                "org.bitcoinj/bitcoinj-core/0.12.3"
                #+nil "org.bitcoinj/bitcoinj-core/0.12.3")))




