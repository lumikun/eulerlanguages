"""
    Problem 9
    There exists exactly one Pythagorean triplet for which a + b + c = 1000.
    Find the product abc.
"""

for b = 499:-1:1
    (a, r) = divrem(500000-1000*b, 1000-b)
    if r == 0
        println(a*b*(1000-a-b))
        break
    end
end
