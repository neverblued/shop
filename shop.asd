;; (c) Дмитрий Пинский <demetrius@neverblued.info>
;; Допускаю использование и распространение согласно
;; LLGPL -> http://opensource.franz.com/preamble.html

(defpackage #:shop-system
  (:use #:common-lisp #:asdf))

(in-package #:shop-system)

(defsystem "shop"
  :description "Shopping system"
  :version "0.2"
  :author "Дмитрий Пинский <demetrius@neverblued.info>"
  :licence "LLGPL"
  :depends-on (#:submarine)
  :serial t
  :components ((:file "package")
               (:file "condition")
               (:file "layout")
               (:file "property")
               (:file "data")
               (:file "price")
               (:file "cart")
               (:file "misc")
               (:file "test")))
