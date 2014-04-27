;; Problem 10

; wikipediaより -エラトステネスの篩-
(define (eratosthenes n)
  (let ((ls (iota (- n 2) 3)))
    (letrec ((func0 
	      (lambda (x lst)
		(filter (lambda (y) 
			  (not (zero? (modulo y x))))
			lst)))
	     (func1 
	      (lambda (z)
		(apply max z))))
      (let loop ((ls0 '(2)) (ls1 (func0 2 ls)))
	(cond 
	 ((< (func1 ls1) (expt (func1 ls0) 2))
	  (append (reverse ls0) ls1))
	 (else 
	  (let ((w (car ls1)))
	    (loop (cons w ls0) (func0 w (cdr ls1))))))))))

(define (prob10)
  (fold + 0 (eratosthenes 2000000)))
