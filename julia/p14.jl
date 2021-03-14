"""
    Problem 14
    Which starting number, under one million, produces the longest chain?
"""

next(n) = n%2==0 ? n/2 : 3n+1      

numbers = Dict(1=>1)                
for n=2:1e6
    _chain = [n]                   
    while n ∉ keys(numbers)         
        n = next(n)      
        append!(_chain, n)
    end
    chainLength = numbers[n]       
    for _n in _chain[end-1:-1:1]    
        chainLength += 1
        numbers[_n] = chainLength
    end
end
findmax(numbers)[2]