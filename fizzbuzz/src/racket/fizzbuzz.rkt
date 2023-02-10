#lang racket

(for ([n (in-range 1 50)])
    (begin 
        (cond
            [(and (eq? (modulo n 3) 0) (eq? (modulo n 5) 0))
                (display "fizz buzz")]
            [(eq? (modulo n 3) 0)
                (display "fizz")]
            [(eq? (modulo n 5) 0)
                (display "buzz")]
            [else
                (display n)])
        (newline)))