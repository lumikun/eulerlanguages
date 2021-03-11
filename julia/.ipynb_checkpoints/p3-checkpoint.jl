"""
    Problem 3 
    What is the largest prime factor of the number 600851475143 ? 
"""

using Primes

function solve()
    n = 600851475143
    iter = collect(2:round(Int, sqrt(n)))
    filter!(x -> n % x == 0, iter)
    ans = 0
    for i in iter
        k = div(n, i)
        if i > ans && isprime(i)
            ans = i
        end
        if k > ans && isprime(k)
            ans = k
        end
    end
    ans
end

println(solve())