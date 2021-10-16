"""
    Problem 22:

"""

nameScore(name::String) = sum(collect(name) - 'A' + 1)

x = readlines("names.txt")[1]
x = split(x, ",")
x = strip.(x, '\"')
x = sort(x)
x = nameScore.(x)
x .*= 1:length(x)
sum(x)

