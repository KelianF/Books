#lang racket
(require racket/trace)

; count the number of elements in a list no tail recursively
; (headcount '(1 2 3)) -> 3
(define (headcount lst)
  (if (empty? lst)
      0
      (+ 1 (headcount (cdr lst)))))

(headcount '("a" 1 2 3 "b"))
  

; count the number of elements in a list tail recursively
; (tailcount '(1 2 3)) -> 3
(define (tailcount-helper lst counter)
  (if (empty? lst)
      counter
      (tailcount-helper (cdr lst) (+ 1 counter))))

(define (tailcount lst)
  (tailcount-helper lst 0))

(trace tailcount-helper)
(tailcount '("a" "b" "c"))

; remove 2's from a list
; '(1 2 3 4 2 5) -> 
(define (notwos lst)
  (if (empty? lst)
      '()
      (if (equal? 2 (car lst))
          (notwos (cdr lst))
          (cons (car lst) (notwos (cdr lst))))))


(trace notwos)
(notwos '(2 3 "2" "a" 2))
                  
          
  

