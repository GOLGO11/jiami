;(do (i j (+ i 1))
;       (> i 10) 'done)
;  (format t "~A~%" i)

(defun show-squares (start end)
  "测试一下这段字"
  (do ((i start (+ i 1)))
    ((> i end) 'done)
    (format t "~A ~A~%" i (* i i))))

(show-squares 1 10)

(setf a 23)
(format t "~A~%" a)


(let ((x 'a))
  (do ((x 1 (+ x 1))
       (y x x))
    ((> x 5))
    (format t "(~A ~A)  ~%" x y)))


