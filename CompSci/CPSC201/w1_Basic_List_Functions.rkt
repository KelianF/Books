#lang racket

; list
; takes in any number of any datatype arguments
; outputs a list with those arguments as elements in the list
; in the same order they were passed to the function
; (list #f 5 "Hello world" 'symbol) -> '(#f 5 "Hello world" 'symbol)

; car/first
; take in a list with at least one element
; outputs the first element of that list
; (car '(#f 5 "f" 'the)) -> #f ; which btw is False bool
; (caar '( (1 2 3) 'hello #f 5)) -> (car (1 2 3)) -> 1

; cdr/rest
; takes in a list with at least one element
; output another list without the first element of the input list
; (cdr '(1 2 3)) -> '(2 3)
; (cdddr '(1 2 3 4)) -> '(4)

; You can do the car of cdr:
; (cadr '(1 2 3)) -> 2

; last
; (last '(1 2 3 4)) -> 4

; reverse
; (reverse '(1 2 3 4)) -> '(4 3 2 1)

; cons
; takes 2 args, first what to add, second what to add it to
; it is basically append @ begning for the first place
; (cons 1 '(2 3 4)) -> '(1 2 3 4)


; append
; it appends 2 lists; only works with lists
; (append '(1 2) '(3 4)) -> '(1 2 3 4)

; map
; takes in a procedure and a list and applies that procedure to every element in the list
; output is list
; (map string? '(1 2 3 "hello" 4 5 'symbol "Good bye")) -> '(#f #f #f #t #f #f #f #t)

; If want to use a function with 2 args, then need to use a lambda
; (map (lambda (x) (+ 1 x)) '(1 2 3)) -> '(2 3 4)

; length
; takes a list
; outputs an integer representing the number of elements in your list
; (length '(1 2 3)) -> 3

; empty?
; takes a list
; returns #t if list is empty,
; returns #f if list is not.
; (empty? '()) -> #t
; (empty? '(1 2 3)) -> #f
; (empty? empty) -> #t









