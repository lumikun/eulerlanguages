fibs(p, c, n) = c>4e6 ? n : fibs(c, p+c, c % 2 == 1 ? n : n+c)
println(fibs(1, 2, 0))