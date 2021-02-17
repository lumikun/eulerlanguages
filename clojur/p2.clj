(defn fibs
    ([] (fibs 0 1))
    ([first second]
        ((fn rfib [a b] (lazy-seq (cons a (rfib b (+' a b))))) first second)))
(defn solve []
    (reduce + (filter even? (take-while #(<= % 4000000) (fibs)))))
(println (solve))