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
; reverse

; cons

; append

; map

; length

