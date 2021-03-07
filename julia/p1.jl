"""
    Problem 1 
    Find the sum of all the multiples of 3 or 5 below 1000. 
"""

ans = sum([x%3 == 0 || x % 5 == 0 ? x : 0 for x = 1:999])
println(ans)
ans = 3*Int(999/3)*((1+Int(999/3))/2)+5*Int(999/5)*((5+Int(999/5))/2)-15*Int(999/15)*((15+Int(999/15))/2)
println(ans)