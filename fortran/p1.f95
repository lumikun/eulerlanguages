!! Find the sum of all the multiples of 3 or 5 below 1000
!! Project Euler problem 1
PROGRAM p1
    implicit none
    INTEGER :: x = 1000
    INTEGER :: i = 3, ans = 0
    DO WHILE (i .lt. x)
        IF (MOD(i, 3) .eq. 0) THEN
            IF (MOD(i, 5) .eq. 0) THEN
                ans = ans + i 
            ELSE 
                ans = ans + i 
            END IF
        ELSE IF (MOD(i, 5) .eq. 0) THEN
            ans = ans + i 
        END IF
    END DO
    PRINT *, "ans = ", ans
END PROGRAM p1