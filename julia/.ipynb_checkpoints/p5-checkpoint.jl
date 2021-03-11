"""
    Problem 5
    What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?
"""

function mapper(arr)
    for i = 1:18
        for j = i+1:19
            arr[j] = arr[j]%arr[i] == 0 ? arr[j]/arr[i] : arr[j]
        end
    end
    arr
end

function solve()
    return reduce(*, mapper(collect(2:20)))
end

println(solve())