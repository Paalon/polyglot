#lang racket

(for ([n (in-range 1 51)])
  (displayln
    (cond
      [(and (= (modulo n 3) 0) (= (modulo n 5) 0)) "fizz buzz"]
      [(= (modulo n 3) 0) "fizz"]
      [(= (modulo n 5) 0) "buzz"]
      [else n])))
