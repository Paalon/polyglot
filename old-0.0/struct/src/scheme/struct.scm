(import (scheme base) (scheme write))

(define (displayln x) (begin (display x) (newline)))

(define-record-type animal (make-animal name weight) animal?
  (name animal-name)
  (weight animal-weight))

(let ((max (make-animal "Max" 5.0)))
  (displayln (animal-name max))
  (displayln (animal-weight max)))
