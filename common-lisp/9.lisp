;(defparameter *small* 1)
;(defparameter *big* 100)

(defun plot (fn min max step)
  (loop for i from min to max by step do
	(loop repeat (funcall fn i) do (format t "*"))
	(format t "~%")))

(plot #'exp 0 4 1/2)


(print ((lambda (x y) (+ x y)) 2 3))
