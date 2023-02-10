#lang racket

(for ([n (in-range 1 51)])
  (cond
    [(and (eq? (modulo n 3) 0) (eq? (modulo n 5) 0))
      (displayln "fizz buzz")]
    [(eq? (modulo n 3) 0)
      (displayln "fizz")]
    [(eq? (modulo n 5) 0)
      (displayln "buzz")]
    [else
      (displayln n)]))
