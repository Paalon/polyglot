(import
  (scheme base)
  (scheme write))

(do
  ((n 1 (+ n 1)))
  ((> n 50) ())
  (begin
    (display
      (cond
        ((and (= (modulo n 3) 0) (= (modulo n 5) 0)) "fizz buzz")
        ((= (modulo n 3) 0) "fizz")
        ((= (modulo n 5) 0) "buzz")
        (else n)))
    (newline)))
