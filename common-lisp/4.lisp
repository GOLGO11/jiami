;list dolist lambda if and or not defmacro quote(') dotimes



(format t "~A~%" (list 'a 'b 'c))

(format t "~a~%" (cons 'a nil))

(setf x (list 'e 'f))  
(format t "~A~%" x)

;let 和setf 有什么区别？

(format t "~A~%" 6) 

(format t "~A~%" (lambda (x) (list x 'h)))

(format t "~A~%" (list x 'h nil))
