i = 3
ans = 0
while i < 1000: 
    if i % 3 == 0:
        if i % 5 == 0:
            ans += i
        else:
            ans += i
    elif i % 5 == 0:
            ans += i 
    i += 1
print("ans = %d", ans)