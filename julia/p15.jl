"""
    Problem 15
    How many such routes are there through a 20×20 grid?
"""

function solve()
    return factorial(BigInt(40))/(factorial(BigInt(20))^2)
end
println(solve())