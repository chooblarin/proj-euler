;; Problem 3

(define (prob3)
  (let loop ((x 600851475143) (max-prime 1) (n 1))
    (cond 
     ((= x 1) max-prime)
     ((zero? (modulo x n)) (loop (/ x n) n (+ n 1)))
     (else                 (loop x max-prime (+ n 1))))))
