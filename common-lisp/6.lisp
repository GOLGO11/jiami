(format t "操你妈！~%")

(defun verbose-sum (x y)
  (format t "Summing ~d and ~d.~%" x y)
  (format t "~d~%" (+ x y)))

(verbose-sum 10 20)
