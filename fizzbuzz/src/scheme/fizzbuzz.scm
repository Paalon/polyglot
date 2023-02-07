(import
  (scheme base)
  (scheme write))

(define fizzbuzz
  (lambda (n)
    (begin
      (if (> n 1) (fizzbuzz (- n 1)) ())
      (cond
        ((and (= (modulo n 3) 0) (= (modulo n 5) 0))
          (begin (display "fizz buzz") (newline)))
        ((= (modulo n 3) 0)
          (begin (display "fizz") (newline)))
        ((= (modulo n 5) 0)
          (begin (display "buzz") (newline)))
        (else
          (begin (display n) (newline)))))))

(fizzbuzz 50)