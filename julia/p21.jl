"""
    Problem 21
    Evaluate the sum of all the amicable numbers under 10000.
"""

using Primes, Combinatorics

d(n) = sum(Set(map(prod,combinations(vcat([1],map(x -> fill(x[1],x[2]),collect(factor(n)))...)))))-n
function solve(n)
    sum(filter(x-> x == d(d(x)) && d(x) != x,1:n-1))
end

println(solve(10000))