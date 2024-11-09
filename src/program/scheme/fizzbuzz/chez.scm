(import
  (rnrs)
  (rnrs r5rs (6)))

(define (fizz-buzz-element-string n)
  (let
    (
      (n3 (zero? (remainder n 3)))
      (n5 (zero? (remainder n 5))))
    (cond
      ((and n3 n5) "fizz buzz")
      (n3 "fizz")
      (n5 "buzz")
      (else (number->string n)))))

(define (print-fizz-buzz n)
  (do
    ((k 1 (+ k 1)))
    ((> k n))
    (begin
      (display (fizz-buzz-element-string k))
      (newline))))

(print-fizz-buzz 30)
