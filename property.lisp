(in-package #:shop)

(defclass property ()
  ((title :initarg :title :accessor property-title)))

(defgeneric property= (property-1 property-2))

(defgeneric product-properties (product))

(defgeneric section-properties (section))

(defun properties (product)
  (awith (append (awith (product-section product)
                   (section-properties it))
                 (product-properties product))
    (remove-duplicates it :test #'property=)))

(defclass section-property (property)
  ((section :initarg :section :accessor property-section)))

(defclass quantity-property (property)
  ((entity :initarg :entity :accessor property-entity)))

(defclass set-property (property)
  ((range :initarg :range :accessor property-range)))

(defclass product-property-value-relation ()
  ((product :initarg product :accessor relation-product)
   (property :initarg property :accessor relation-property)
   (value :initarg value :accessor relation-value)))

(defgeneric stored-property-value (product property))

(defgeneric default-property-value (property))

(defun property-value (product property)
  (unless (find property (properties product) :test #'property=)
    (error 'invalid-property :product product :property property))
  (or (stored-property-value product property)
      (default-property-value property)))
