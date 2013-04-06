(in-package #:shop)

(defclass action ()
  ((start :initarg :start :accessor action-start)
   (end :initarg :end :accessor action-end)))

(defclass price-action (action)
  ((product :initarg :product :accessor action-product)
   (price :initarg :price :accessor action-price)))

(defgeneric price-action (product))

(defgeneric product-price (product))

(defun price (product)
  (aif (price-action product)
       (action-price it)
       (product-price product)))
