(import
  (scheme base)
  (scheme write))

(define display-items (lambda (lst)
  (if (not (null? lst))
    (begin
      (display (car lst))
      (newline)
      (display-items (cdr lst))))))

(display-items (string->list "🍎 and 🍏"))
