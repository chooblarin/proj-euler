;; Problem 7

(define (undivisible-by-all? x l)
  (let itr ((x x) (l l))
    (cond 
     ((null? l) #t)
     ((zero? (remainder x (car l))) #f)
     (else 
      (itr x (cdr l))))))

(define (prob7)
  (let itr ((n 1) (x 3) (prime-lst '(2)))
       (cond 
	((= n 10001) (car prime-lst))
	((undivisible-by-all? x prime-lst) 
	 (itr (+ 1 n) (+ 2 x) (cons x prime-lst)))
	(else 
	 (itr n (+ 2 x) prime-lst)))))
