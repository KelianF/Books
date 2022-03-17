#lang racket

; Factoring review
; Factor is the same as divisor, anything that divides a given number with no remainder
; 24 -> 1, 2, 3, 4, 6, 12, 24 
; 10 -> 1, 2, 5, 10

; Prime numbers
; Prime number has no factor except from 1 and itself
; Ex: 7 and 13

; A Prime factor is a factor that is prime
; Prime Factorization of 24: 1, 2, 3 

; What's a power set
; All the possible combinations of element in a given set
; (), (1), (2), (3), (1, 2), (2, 3), (1, 3), (1, 2, 3)

; PS of 0: (), (0)
; PS of (0, 1): (), (0), (1), (0, 1)

; The Algo to do it: Duplicate the PS for the first ellement and add the next element
; For (0): (), (0)
; for (0, 1): (), (0) / (), (0) -> (), (0) / (1), (0, 1) -> (), (0), (1), (0, 1)
; for (0, 1, 2): (), (0), (1), (0, 1) / (), (0), (1), (0, 1) -> (), (0), (1), (0, 1), (2), (0, 2), (1, 2), (0, 1, 2)



; How can a power set get us all factors
; 24 ->  1*2*2*2*3

; if we want to write a function in racket that get all the factors of a number given its prime number
; we can powerset the prime factors (This will give up list of combinations of factors.






