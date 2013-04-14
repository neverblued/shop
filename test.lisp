(in-package #:shop)

(defun make-random-product (&key (id 0))
  (make-instance 'product
                 :id id
                 :price (+ 5 (random 10000))
                 :title (join (any "Котёл" "Велосипед" "Хуй")
                              " "
                              (any "газовый" "спортивный" "моржовый")
                              " "
                              (any "XXX" "FOOBAR" "TEST" "NAMEREC")
                              "-"
                              (+ 10 (random 90)))))
