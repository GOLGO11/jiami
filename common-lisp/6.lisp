(format t "操你妈！~%")

(defun verbose-sum (x y)
  (format t "Summing ~d and ~d.~%" x y)
  (format t "~d~%" (+ x y)))

(verbose-sum 10 20)


(defun test-one (x y)
  (format t "~a~%" (lambda (x) (* x x)))
  (format t "~a~%" (lambda (y) (/ y 9))))

(test-one 10 20)


(print "Hello, world!")
