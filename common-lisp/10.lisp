(defun z (x y)
  (do ((i x (+ i 1)))
      ((> i y) 'done)
    (format t "请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰, 请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰，请勿打扰, 请勿打扰，请勿打扰, 请勿打扰~%")))

(z 10 200000000000000000000000000000000000000000000000000000000000000000000000000000)


; 初级函数 setf let do if format defun 加减乘除 lambda quote list cons car cdr 断言 defparameter read apply funcall make-array concatenate length

;(print arr)
;(print (aref arr 0)) 
;如何计算数组的长度

;(setf arr (make-array '10))

;(format t (concatenate 'string "Hello " "world!~%") )

(defun z (x)
  (reverse x)) 

(format t (z "这是一串回文"))
(format t "~%")

(format t "一辆火车驶过~%")

(print (intern "AAAA"))
(print (intern "aaa"))

; 日语，动画，围棋，编程，小说
; 在图书馆学编程，学日语，下围棋
; 在家里就学动画，看小说
