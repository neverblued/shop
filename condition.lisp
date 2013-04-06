(in-package #:shop)

(define-condition data-error () ())

(define-condition invalid-property (data-error)
  ((product :initarg :product :reader condition-product)
   (property :initarg :property :reader condition-property)))
