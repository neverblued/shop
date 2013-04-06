(in-package #:shop)

(defgeneric process-order (order))

(defun (setf cart-id) (order-id)
  nil)
