;; Problem 9

;; ピタゴラス数判定
(define pythagorean?
  (lambda (a b c)
    (= (* c c) (+ (* a a) (* b b)))))

;; 3数の和がxかどうか
(define (eq-x-to-sum x a b c)
  (= x (+ a b c)))


(define (prob9)
  (let loop1 ((i 1000))
    (cond 
     ((zero? i) "no-solution")
     (else 
      (let loop2 ((j i))
	(cond 
	 ((zero? j) (loop1 (- i 1)))
	 (else 
	  (let loop3 ((k j))
	    (cond 
	     ((zero? k) (loop2 (- j 1)))
	     ((and (eq-x-to-sum 1000 i j k) 
		   (pythagorean? k j i))
	      (* i j k)) ; end
	     (else 
	      (loop3 (- k 1))))))))))))
