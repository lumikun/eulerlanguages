"Gonna have to actually learn Clojure."
(defn multiple? [coll n]
    (some #(zero? (rem n %)) coll))
    
(defn solve []
    (reduce + (filter (partial multiple? [3 5]) (range 1000))))

(println (solve))