"""
    Problem 16
    What is the sum of the digits of the number 2^1000?
"""

solve(x) = sum(parse.(Int, collect(string(x))))
println(solve(BigInt(2)^1000))