(in-package #:shop)

(defclass product ()
  ((id :initarg :id :accessor product-id)
   (barcode :initarg :barcode :accessor product-barcode)
   (title :initarg :title :accessor product-title)
   (price :initarg :price :accessor product-price)))

(defgeneric product= (product-1 product-2))

(defgeneric product-section (product))

(defclass section ()
  ((id :initarg :id :accessor section-id)
   (parent :initarg :parent :accessor section-parent)
   (title :initarg :title :accessor section-title)))

(defclass catalogue ()
  (product
   section))
