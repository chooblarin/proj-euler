;; Problem 1

(define (multiples-of-3or5? x)
  (cond 
   ((zero? (modulo x 3)) #t)
   ((zero? (modulo x 5)) #t)
   (else #f)))

(define (prob-1)
  (let loop ((sum 0) (n 0))
    (cond 
     ((>= n 1000) sum)
     ((multiples-of-3or5? n) (loop (+ n sum) (+ 1 n)))
     (else (loop sum (+ 1 n))))))
