;字符串, 字符串拼接
;函数 undertale，swap， encrypt1， encrypt2

(defun undertale (b)
  (if (= (length b) 6)
    (setf arr (make-array '6)))

  (setf (arr 0) (b 2))
  (setf (arr 1) (b 4))
  (setf (arr 2) (b 1))
  (setf (arr 3) (b 5))
  (setf (arr 4) (b 3))
  (setf (arr 5) (b 0))
  (setf b arr)

  (if (= (length b) 5)
    (setf arr (make-array '5)))
  
  (setf (arr 0) (b 2))
  (setf (arr 1) (b 4))
  (setf (arr 2) (b 1))
  (setf (arr 3) (b 3))
  (setf (arr 4) (b 0))
  (setf b arr)

  (if (= (length b) 4)
    (setf arr (make-array '4)))

  (setf (arr 0) (b 2))
  (setf (arr 1) (b 1))
  (setf (arr 2) (b 3))
  (setf (arr 3) (b 0))
  (setf b arr)

  (if (= (length b) 3)
    (setf arr (make-array '3)))

  (setf (arr 0) (b 2))
  (setf (arr 1) (b 1))
  (setf (arr 2) (b 0))
  (setf b arr)

  (if (= (length b) 2)
    (setf arr (make-array '2)))

  (setf (arr 0) (b 1))
  (setf (arr 1) (b 0))
  (setf b arr)

  (if (= (length b) 1)
    (setf arr (make-array '1))))


(defun swap (b)
  (setf arr (make-array '2))

  (setf (arr 0) (b 1))
  (setf (arr 1) (b 0))
  (setf b arr))


(defun encrypt-1 (plaintext)
  (setf cyphertext-1 '')
  (setf remain (integer (mod (length plaintext) 6)))
  (if (= remain 0)
    (setf num (integer (/ (length plaintext) 6)))
    (setf num (integer (+ 1 (/ (length plaintext) 6)))))

  (if (= remain 0)
    (do ((i num (+ i 1)))
      (> i num 'done)
      (setf b (plaintext (* 6 i) (* 6 (+ i 1))))
      (setf cyphertext-1 (concatenate  cyphertext (undertale b)))))

  (if (!= remain 0)
    (do ((i (- num 1) (+ i 1)))
      (> i (- num 1) 'done)
      (setf b (plaintext (* 6 i) (* 6 (+ i 1))))
      (setf cyphertext-1 (concatenate cyphertext-1 (undertale b)))
      (setf b (plaintext (- (length plaintext) remain)))
      (setf cyphertext-1 (+ cyphertext-1 (undertale b))))))


(defun encrypt-2 (cyphertext-1)
  (setf cyphertext "")
  (setf remain (integer (mod (length cyphertext-1) 2)))
  (if (= remain 0)
    (do ((i num (+ i 1)))
      (> i num 'done)
      (setf b (cyphertext-1 (* 2 i) (* 2 (+ i 1))))
      (setf cyphertext-2 (concatenate cyphertext-2 (swap b)))))

  (if (!= remain 0)
    (do ((i (- num 1) (+ i 1)))
      (> i (- num 1) 'done)
      (setf b (cyphertext-1 (* 2 i) (* 2 (+ i 1))))
      (setf cyphertext-2 (concatenate cyphertext-2 (swap b)))
    (setf cyphertext-2 (concatenate cyphertext-2 cyphertext-1 -1)))))
  

(read plaintext)

(setf cyphertext-1 (encrypt-1 plaintext))
(setf cyphertext-2 (encript-2 cyphertext-1))

(format t "生成的密文如下: ~%")
(format t "~a~%" cyphertext-2)
