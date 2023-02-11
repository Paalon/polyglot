(import
  (scheme base)
  (scheme write))

(do
  ((n 1 (+ n 1)))
  ((> n 50) ())
  (begin
    (cond
      ((and (= (modulo n 3) 0) (= (modulo n 5) 0))
        (display "fizz buzz"))
      ((= (modulo n 3) 0)
        (display "fizz"))
      ((= (modulo n 5) 0)
        (display "buzz"))
      (else
        (display n)))
    (newline)))
