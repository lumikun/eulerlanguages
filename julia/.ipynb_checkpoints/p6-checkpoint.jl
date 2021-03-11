"""
    Problem 6
    Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

    For help: https://trans4mind.com/personal_development/mathematics/series/sumNaturalSquares.htm
"""

s1 = n -> ((n*(n+1)/2))^2
s2 = n -> (n*(n+1)*(2n+1))/6

println(Int64(s1(100)-s2(100)))

sum1 = n -> n^2 * (n+1)^2 * 1/4
sum2 = n -> n * (n+1) * (2n+1) * 1/6
println(Int64(sum1(100)-sum2(100)))