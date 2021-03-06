"""
    Problem 2 
    Find the sum of the even-valued terms in the Fibonacci sequence < 4_000_000 ? 
"""

fibs(p, c, n) = c>4e6 ? n : fibs(c, p+c, c % 2 == 1 ? n : n+c)
println(fibs(1, 2, 0))


function solve()
    ans = 0
    phi = 4.236068
    for i in 2:4000000
        ans = ans + i
        i = Int(round((i * phi)))
    end
    return ans
end
println(solve())
# TODO Figure out shit