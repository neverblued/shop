;; (c) Дмитрий Пинский <demetrius@neverblued.info>
;; Допускаю использование и распространение согласно
;; LLGPL -> http://opensource.franz.com/preamble.html

(defpackage #:shop
  (:use #:cl #:bj #:alexandria #:iterate #:postmodern)
  (:export #:cart-id))
