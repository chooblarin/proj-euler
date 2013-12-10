;; Problem 6

(define sq**
  (lambda (x) (* x x)))

(define (prob6)
  (- (sq** (fold + 0 (iota 100 1)))
     (fold + 0 (map sq** (iota 100 1)))))
