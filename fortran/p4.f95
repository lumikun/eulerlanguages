!! Find the largest palindrome made from the product of two 3-digit numbers.
!! Project Euler problem 4
PROGRAM p4
    implicit none
    INTERFACE 
        FUNCTION revNum(n, partial)
            INTEGER :: revNum
            INTEGER,  INTENT(IN) :: n 
            INTEGER, optional :: partial
        END FUNCTION
    END INTERFACE
END PROGRAM p4

RECURSIVE FUNCTION revNum(n, partial) RESULT(res)
    implicit none
    INTEGER :: res 
    INTEGER, INTENT(IN) :: n 
    INTEGER, optional :: partial
    INTEGER :: part, modulo, division

    IF (present(partial)) THEN
        part = partial
    ELSE
        part = 0
    END IF
    IF (n .eq. 0) THEN
        res = part 
        RETURN
    ELSE
        modulo = INT(MOD(n, 10))
        division = n / 10
        res = revNum(division, part * 10 + modulo)
        RETURN
    END IF
END FUNCTION revNum