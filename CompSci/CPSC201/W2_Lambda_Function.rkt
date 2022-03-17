#lang racket

; What's lambda function
; are functions that output a procedure/function
(define (function1) (lambda (x) (+ x 1)))

((function1) 5)
; lambda functions have two inputs:
; 1. The arguments enclosed in parentheses
; 2. The output of the function output by the lambda function

; maps a proceduure onto a list
(define (my-map lst proc)
  (if (empty? lst)
      '()
      (cons (proc (car lst)) (my-map (cdr lst) proc))))

(my-map '(1 2 "Hello") string?)

; my-map
; I want to make a list of each element within a list,
; add a 0 onto that list, and then apppend another list with the word "Hello"
; (my-map '(1 2 "Hello") (append '(hello) (cons 0 (each element) ) -> doesn't work
; (my-map '(1 2 "Hello") (lambda (x) (append '(hello) (cons 0 (list x))))

(my-map '(1 2 "Hello") (lambda (x) (append '(hello) (cons 0 (list x)))))