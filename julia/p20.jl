"""
    Problem 20
    Find the sum of the digits in the number 100!
"""

function solve()
    ans = factorial(big(100))
    ans = parse.(Int, collect(string(ans)))
    return sum(ans)
end
println(solve())