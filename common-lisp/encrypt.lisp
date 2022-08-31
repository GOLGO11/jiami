;加密

(defun undertale (block)
  (if (= (len block) 6)
    (car block)
    (cdr block)))

(defun undertale-1 (block)
  (if (= (len block) 5)
    (car block)
    (cdr block)))

(defun undertale-2 (block)
  (if (= (len block) 4)
    (car block)
    (cdr block)))

(defun undertale-3 (block)
  (if (= (len block) 3)
    (car block)
    (cdr block)))

(defun undertale-4 (block)
  (if (= (len block) 2)
    (car block)
    (cdr block)))

(defun undertale-5 (block)
  (if (= (len block) 1)
    (car block)
    (cdr block)))

read len do 字符串拼接 format
