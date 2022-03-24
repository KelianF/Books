#lang racket

; Logical problem of the day: 12, 6, 3, 10, 5, ...
; What is the next number in the above series?
; -> 16

; The Collatz Function

(define (collatz n)
  (if (= (modulo n 2) 0) (/ n 2)
      (+ 1 (* n 3))))
(collatz 11)
(collatz 12)
(collatz 6)
(collatz 3)
(collatz 10)
(collatz 5)

; Recursion
(collatz (collatz (collatz 12)))


(define (c-series n)
  (print n)
  (newline)
  (if (equal? n 1) 'done
      (let ((next (collatz n)))
    (c-series next))))

(c-series 11)

(define (c-series2 n)
  (print n)
  (newline)
  (if (equal? n 1) 'done
      (c-series2 (collatz n))))

(c-series2 11)

; Trace
(require racket/trace)

(trace c-series)
(c-series 11)
