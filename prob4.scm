;; Problem 4

; 整数->リスト変換
(define (integer-to-list n)
  (let loop ((n n) (lst '()))
    (cond 
     ((zero? n) lst)
     (else (loop (quotient n 10) (cons (modulo n 10) lst))))))

; 回文数判定
(define (palindromic? x)
  (let ((lst (integer-to-list x)))
    (cond 
     ((equal? lst (reverse lst)) #t)
     (else #f))))

; 2数の積のリスト
(define (create-num-list)
  (let ((lst '()))
    (let loop1 ((i 1))
      (cond ((< i 1000)
	     (let loop2 ((j 1))
	       (cond ((< j 1000)
		      (set! lst (cons (* i j) lst))
		      (loop2 (+ 1 j)))))
	     (loop1 (+ 1 i)))))
    lst))

(define (prob4)
  (fold (lambda (a b) (if (> a b) a b)) -inf.0 
	(filter palindromic? (create-num-list))))

