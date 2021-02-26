(defn prime? [n]
    (.isProbablePrime (bigint n) 10)))

(defn solve[]
    (let [n 600851475143]
        (loop [i (int (sort n))]
            (if (and (zero? (rem n i)) (prime? i))
                i
                (recur (dec i))))))

(println (solve))