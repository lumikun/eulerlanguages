(defn is-palindrome? [coll]
  (= coll (reverse coll)))

(defn solve []
  (reduce max
          (for [a (range 900 1000)
                b (range a 1000)
                :let [sum (* a b)]
                :when (is-palindrome? sum)]
            sum)))

(println (solve))
