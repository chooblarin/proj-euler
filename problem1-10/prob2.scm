;; Problem 2

(define (fibonacci n)
  (let loop ((n n) (a 1) (b 0))
    (cond ((zero? n) a)
	  (else (loop (- n 1) (+ a b) a)))))

(define (prob2)
  (let loop ((n 1) (sum 0))
    (let ((x (fibonacci n)))
      (cond
       ((> x 4000000) sum)
       ((even? x) (loop (+ 1 n) (+ x sum)))
       (else      (loop (+ 1 n) sum))))))
