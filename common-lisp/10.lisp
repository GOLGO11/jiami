(defun z (x y)
  (do ((i x (+ i 1)))
      ((> i y) 'done)
    (format t "请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰, 请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰~%")))

;(z 10 200000000000000000000000000000000000000000000000000000000000000000000000000000)


; 初级函数 setf let do if format defun 加减乘除 lambda quote list cons car cdr 断言 defparameter read apply funcall make-array concatenate length

;(print arr)
;(print (aref arr 0)) 
;如何计算数组的长度

;(setf arr (make-array '10))

(format t (concatenate 'string "Hello " "world!~%") )
