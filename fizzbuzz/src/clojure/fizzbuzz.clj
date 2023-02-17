(doseq [n (range 1 51)] 
  (println
    (cond
      (and (= (mod n 3) 0) (= (mod n 5) 0)) "fizz buzz"
      (= (mod n 3) 0) "fizz"
      (= (mod n 5) 0) "buzz"
      :else (str n))))
