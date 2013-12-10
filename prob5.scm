;; Problem 5

(define (divisible-by-all? x n)
  (let itr ((x x) (n n))
    (cond 
     ((zero? n) #t)
     ((zero? (remainder x n)) (itr x (- n 1)))
     (else #f))))

(define (prob5)
  (let itr ((x 2520) (n 20))
    (cond 
     ((divisible-by-all? x n) x)
     (else 
      (itr (+ 1 x) n)))))
