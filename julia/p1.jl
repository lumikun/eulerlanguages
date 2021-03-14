"""
    Problem 1 
    Find the sum of all the multiples of 3 or 5 below 1000. 
"""

ans = sum([x%3 == 0 || x % 5 == 0 ? x : 0 for x = 1:999])
println(ans)