;Add all the natural numbers below one thousand that are multiples of 3 or 5.
#lang racket

(define (divisible-by a b)
  (equal? (modulo a b) 0))
  
(define (include? x)
  (or (divisible-by x 3)
      (divisible-by x 5)))

(define (sum list)
  (foldl + 0 list))

(writeln (sum (filter include? (stream->list (in-range 3 1000)))))