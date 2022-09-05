; 图书管理系统

; 图书分类 b-1 b-2 b-3

;(defun hello-world ()
;  (print "Hello world!"))


;(hello-world)


;数据： 几何原本, 黑天鹅, 人工智能.


;(format t  "我不知道我究竟该写什么样的程序。~%先熟练使用do format setf let if and or cons list ~%")

(defun diedai (start end)
  (do ((i start (+ i 1)))
    ((> i end) 'done)
    (format t  "我不知道我究竟该写什么样的程序。~%先熟练使用do format setf let if and or cons list ~%")))

(defun one (x y)
  (setf n (+ x y))
  (format t "~a~%" n))

(defun two (x y)
  (if (and (= x 10) (= y 20))
    (diedai 10 20)
    (one 10 20)))

(defun three (start end)
  (do ((i start (+ i 1)))
    ((> i end) 'done)
    (format t "******~%")))

;(three 1 10)
;(two 10 200)
;(diedai 10 20)
;(one 10 20)

(defun hello (name &key happy &allow-other-keys)
  (format t "hello ~a " name)
  (if happy
    (format t ":)~&")))

(hello "me" :lisper t)
(hello "me" :happy t)
