;;树形递归求斐波那契数列
(defun fib1 (n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (t (+ (fib1 (- n 2))
                 (fib1 (- n 1))))))

;;迭代递归
(defun fib2 (n)
  (fib2-iter(0 1 n)))

(defun fib2-iter (a b n)
  (if (= n 0)
      b
      (fib2-iter (b
                  (+ a b)
                  (- n 1)))))
