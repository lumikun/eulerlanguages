"""
    Problem 12
    What is the value of the first triangle number to have over five hundred divisors?
"""

using Primes

function solve(n)
    i = 2
    while true
        if prod(x -> x[2]+1, collect(factor(div(i*(i+1),2)))) > n
            return div(i*(i+1),2)
        end
        i += 1
    end
end
println(solve(500))