#lang racket

(define (sorted? lst . compare?)
  compare?)


(sorted? '())

(sorted? '() 1)

(sorted? '() '(2))

; function to output a list full of 1's of input length (input length must be a positive integer)
; unless they pass in something as lst contents,
; in which case I will fill the list with input length copies of 1st content

(define (makelistlength input_length . lst_contents)
  (if (equal? 0 input_length)
      '()
      (if (empty? lst_contents)
      (cons 1 (makelistlength (- input_length 1)))
      (cons (car lst_contents) (makelistlength (- input_length 1) (car lst_contents))))))

(makelistlength 5)

(makelistlength 5 "Hello")