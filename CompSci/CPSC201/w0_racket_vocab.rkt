#lang racket

; functions
; parenthesis encloses when called
; define is a function that takes two arguments:
; 1. Name of the function and the name of its inputs, in parens
; 2. the output of the function
(define (function1) 1)
(define (function2 input1 input2 input3) input1)

; Booleans
; They are true of false
; written in racket: #t or #f
; Not TRUE or #True
; To check if Boolean:
(boolean? #t)
(boolean? 1)

; Numbers
; 1,2,3,.. integers
; 1.5, 2.4  inexacts
; 1, 10/3   exacts
(exact? 1)
(exact? 10/3)
(exact? 0)
(exact? 1.2)
(zero? 0)

; Characters
; #\a
(char? #\b)

; Strings
; They are inclosed by double quotes
; "Hello World"
"Hello World"
'("Hello World")

; Symbols
; Indicated by a single quote before the word
; 'Symbol 'apple 'variable
; Symbols can NOT have space in them
(symbol? 'a)
; (symbol? 'a farm)

; Lists
; Also enclosed by parens like functions
; also start with a single quote like symbols
; '(____)
; (empty? '()) -> #t
; (empty? '(1)) -> #f
; elemnts within a list are separated by spaces
; '(1 2 3 4 5)

; Void and Undefined
; Anything you haven't defined and isn't a datatype already
; When debugging and running into a VOID error, check your conditions

; a basic if statement
; if true_or_false_question what_to_do_if_true what_to_do_if_false)
;if (equal? 1 1) 'equal 'notequal)
(if (equal? 1 1) 'equal 'notequal)
(if (equal? 1 2) 'equal 'notequal)

; Write a function called lawyer-response that responds like a lawyer in a settlement meeting who is desperate
; if the input (what the other lawyer says) is a number, we will respond that we accept the settlement
; if the input (what the other lawyer says) is a string, we will respond that we just want their price
; if the input (what the other lawyer says) is anything else, return  "huh??"

(define (lawyer-response what_other_lawyer_said)
  (if (number? what_other_lawyer_said) "We accept the settlement"
      (if (string? what_other_lawyer_said) "We just want to know the number" "huh??"
          )
  ))

(lawyer-response 100)
(lawyer-response "We are not so sure we want to settle")
(lawyer-response '())














