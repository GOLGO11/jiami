(defun xunhuan (x y)
  (do ((i x (+ i 1)))
      ((> i y) 'done)
      (format t "~A~%" i)))

;(xunhuan 1 1000000)


(defun test-one (x y)
  (do ((i x (+ i 1)))
      ((> i y 'done)
      (format t "~A~%" (* i i)))))


(defun test-two (x y)
  (format t "~A~%" (+ x y)))

(test-one 1 20)
;(test-two 1 20)
