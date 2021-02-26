"""
    Problem 2
    Find the largest palindrome made from the product of two 3-digit numbers.

    TODO Figure out WHAT THE FUCK is wrong with my while loop??? is the language stupid or am i the Reatard?
"""

function ispalindrome(num)
    rev = 0
    while num != 0
        remainder = num % 10
        rev = rev * 10 + remainder
        num = num / 10
    end
    return rev
end
ans = ispalindrome(123)
println(ans)