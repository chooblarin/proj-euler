;; Problem 8

;; ファイルから数字のリストを取得
(define (read-digit file-name)
  (with-input-from-file file-name
    (lambda ()
      (let itr ((ls '()) (c (read-char)))
	(cond 
	 ((eof-object? c) 	  
	   (map char-to-integer (reverse (filter char-numeric? ls))))
	 (else 
	  (itr (cons c ls) (read-char))))))))

;; 要素をnつずつのリストへ
(define slide 
  (lambda (nl n)
    (let itr ((ls '()) (nl nl))
      (cond 
       ((> n (length nl)) ls)
       (else 
	(itr (cons (take nl n) ls) (cdr nl)))))))

;; charが表す数字
(define char-to-integer
  (lambda (c)
    (- (char->integer c) (char->integer #\0))))

;; リスト内の数値の積
(define (product l)
  (fold * 1 l))

;; リスト内の数値の最大値
(define (max-in lst)
  (fold (lambda (x y) 
	  (if (> x y) x y)) 0 lst))


(define (prob8) 
  (max-in 
   (map product (slide (read-digit "text/pr8.txt") 5)))))
