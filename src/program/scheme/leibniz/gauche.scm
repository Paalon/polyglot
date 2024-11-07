(import
  (scheme base)
  (scheme write)
  (scheme process-context))

(define (powersign n)
  (if (zero? (remainder n 2)) 1 -1))

(define (leibniz-element n)
  (/ (powersign n) (+ (* 2 n) 1)))

(define (leibniz n)
  (* 4.0 (do
    (
      (k 0 (+ k 1))
      (r 0.0 (+ r (leibniz-element k))))
    ((> k n) r))))

(define (parse)
  (string->number (car (cdr (command-line)))))

(display (leibniz (parse)))
(newline)
