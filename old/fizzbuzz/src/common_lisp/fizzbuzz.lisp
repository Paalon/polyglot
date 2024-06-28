(loop for n from 1 below 51 do
  (format t "~a~%"
    (cond
      ((and (= 0 (mod n 3)) (= 0 (mod n 5))) "fizz buzz")
      ((= 0 (mod n 3)) "fizz")
      ((= 0 (mod n 5)) "buzz")
      (t n))))
(exit)
