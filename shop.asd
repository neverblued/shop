;; (c) Дмитрий Пинский <demetrius@neverblued.info>
;; Допускаю использование и распространение согласно
;; LLGPL -> http://opensource.franz.com/preamble.html

(defpackage #:shop-system
  (:use #:common-lisp #:asdf))

(in-package #:shop-system)

(defsystem "shop"
  :description "Shopping system"
  :version "0.1"
  :author "Дмитрий Пинский <demetrius@neverblued.info>"
  :licence "LLGPL"
  :depends-on (#:cl-cron #:wsf-cleepz #:wsf-pg)
  :serial t
  :components ((:file "package")
               (:file "condition")
               (:file "layout")
               (:file "property")
               (:file "price")
               (:file "cart")
               (:file "misc")))
