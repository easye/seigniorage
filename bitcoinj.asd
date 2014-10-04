(asdf:defsystem :bitcoinj
  :defsystem-depends-on (abcl-asdf)
  :pathname "git+https://code.google.com/p/bitcoinj/"
  :components ((:mvn "org.bitcoinj/bitcoinj-core/0.12")))

;;; Should do this (resolve "com.google:bitcoinj:0.11-SNAPSHOT")

