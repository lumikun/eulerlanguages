"""
    Problem 17
    If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used? 
"""

word = Dict(
0 => "",
1 => "one",
2 => "two",
3 => "three",
4 => "four",
5 => "five",
6 => "six",
7 => "seven",
8 => "eight",
9 => "nine",
10 => "ten",
11 => "eleven",
12 => "twelve",
13 => "thirteen",
14 => "fourteen",
15 => "fifteen",
16 => "sixteen",
17 => "seventeen",
18 => "eighteen",
19 => "nineteen",
20 => "twenty",
30 => "thirty",
40 => "forty",
50 => "fifty",
60 => "sixty",
70 => "seventy",
80 => "eighty",
90 => "ninety",
100 => "hundred",
1000 => "onethousand",
)

function count(i)
    if i<20 || i==1000 || (i<100 && i%10==0)
        return length(word[i])
    elseif i<100
        return length(word[i%10] * word[i-i%10])
    elseif i%100==0 
        return length(word[i/100] * word[100])
    else
        return sum(count(i-i%100) + length("and") + count(i%100))
    end
end
function solve()
    return sum(count.(1:1000))
end
println(solve())
