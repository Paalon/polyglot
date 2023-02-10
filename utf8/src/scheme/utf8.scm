(import
  (scheme base)
  (scheme write))

(define split-character (lambda (lst)
  (if (eq? lst ())
    ()
    (begin
      (display (car lst))
      (newline)
      (split-character (cdr lst))))))

(split-character (string->list "🍎 and 🍏"))