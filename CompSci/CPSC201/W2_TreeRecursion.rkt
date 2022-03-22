#lang racket
(require racket/trace)
; Take the logical "and" of a tree

; (tree-and '( (((#t))) (#t) '() ("hello") (4 (5 (6))))) -> #t
; (tree-and '( (((#t))) (#t) '() ("hello") (4 (#f (6))))) -> #f
; (tree-and '( (((1))) (string?) '() "hello" (4 (5 (6)))) -> 'no_booleans

; Base cases for tree recursion?
; List recursion -> Empty List?
; Tree recursion -> when we reach "leaves" or places where you can't go any deeper
; base cases we handle on the spot
; 1. not list
; 2. empty list


; car/cdr separation
; '(1 2) -> car(1) and then cdr ( '(2) ) -> car 2 cdr '()
;           function '( 1 2 )
;           function 1       function '(2)
;                        function 2  function '()


(define (tree-and tree)
  (cond
    ; [(condition) (What to do if that condition is true)]
    [(not (list? tree)) (if (boolean? tree) tree 'no-booleans)]
    [(empty? tree) 'no-booleans]
    ; recursive case
    [else (cond
      ; tree-and both the car and the cdr returen booleans
      [(and (boolean? (tree-and (car tree))) (boolean? (tree-and (cdr tree)))) (and (tree-and (car tree)) (tree-and (cdr tree)))]
      ; tree and on the car returns boolean, but on the cdr returns no-booleans
      [(boolean? (tree-and (car tree))) (tree-and (car tree))]
      ; vice versa
      [(boolean? (tree-and (cdr tree))) (tree-and (cdr tree))]
      ; both return no boolean
      [else 'no-booleans]
      )]))
(tree-and '( (((#t))) (#t) '() ("hello") (4 (5 (6)))))

(tree-and '( (((#t))) (#t) '() ("hello") (4 (#f (6)))))

(tree-and '( (((1))) (string?) '() "hello" (4 (5 (6)))))

(trace tree-and)
(tree-and '(1 #f))