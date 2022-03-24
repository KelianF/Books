#lang racket

; Logical problem of the day: 
; (define (double v)
;    ((if (string? v) string-append +) v v))
; What is the result of (double 5) ?
; -> 

(define (double v)
   ((if (string? v) string-append +) v v))

(double 5)