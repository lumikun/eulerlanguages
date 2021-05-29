"""
    Problem 22
    What is the total of all the name scores in the file? 
    save file to names.txt
"""

nameScore(name::String) = sum(collect(name) - 'A' + 1)

x = readlines("names.txt")[1]
x = split(x, ",")
x = strip.(x, '\"')
x = sort(x)
x = nameScore.(x)
x .*= 1:length(x)
sum(x)