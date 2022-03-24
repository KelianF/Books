#lang racket
(require racket/trace)

; Logical problem of the day: 854-917-6320
; What unique property does this number possess?
; -> It contains all the numbers from 0 to 9 in alphabetical order

; Note: You will be required to learn UNIX, as well as Racket/Scheme.

; Mine
'("Zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine")
(car '("Zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine"))
(cdr '("Zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine"))

(define Liste '("Zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine"))
(define (num-to-word-mine num Liste)
  (cond [(<= num 9)
        (cond [(= 0 num)
              [car Liste]]
              [else (num-to-word-mine (- num 1) (cdr Liste))])]
         
         (#f)
         ))
    
(trace num-to-word-mine)
(num-to-word-mine 3 Liste)

; Example
(define digits '(0 1 2 3 4 5 6 7 8 9))
(define (num-to-word num)                                                         
  (if (> num 9) #f                                                                
      (let ((numbers '("zero" "one" "two" "three" "four" "five" "six" "seven" "ei\
ght" "nine")))                                                                    
        (list-ref numbers num))))
(num-to-word 8)

; To remember:
; (list-ref x y] == x[y]


; Now, the opposite: word-to-num
(define (word-to-num word)                                                        
  (let ((numbers '("zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine")))                                                                        
    (define (find-index lst n)                                                    
      (cond ((null? lst) #f)                                                      
            ((equal? (car lst) word) n)                                         
            (else                                                                 
             (find-index (cdr lst) (+ n 1)))))                                   
    (find-index numbers 0)))
(word-to-num "six")



