"""
    Problem 4
    Find the largest palindrome made from the product of two 3-digit numbers.
"""

function ispalindrome(num)
    str_num = string(num)
    return str_num == reverse(str_num) ? true : false
end

function solve()
    ans = 0
    a = 900
    while a <= 999
        b = 900 
        while b <= 920
            if ispalindrome(a*b)
                ans = a*b
            end
            b += 1
        end
        a += 1
    end
    return ans
end

println(solve())