
(defn prime? [n]
    "Takes [n] and tests if it's a prime?"
    (.isProbablePrime (.toBigInteger (bigint n)) 10)) ; Had to resort to a dirty hack to get this to work. 

(defn solve[]
    "Solves the 3rd Problem from Project Euler."
    (let [n 600851475143]
        (loop [i (int (sort n))]
            (if (and (zero? (rem n i)) (prime? i))
                i
                (recur (dec i))))))
                
(println (solve))