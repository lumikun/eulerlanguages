! Find the sum of all even-valued terms.
! Project Euler Problem 2
PROGRAM p2
  implicit none
  INTEGER :: ans = 0
  INTEGER :: n1 = 1, n2 = 2
  INTEGER :: r = 3
  INTEGER :: upper = 4000000
  DO WHILE (r .lt. upper)
     n1 = n2
     n2 = r
     r = n1 + n2
     IF (0 .eq. MOD(r, 2)) THEN
        ans = ans + r
     END IF
  END DO
  WRITE(*,*) "Ans = ", ans
END PROGRAM p2

