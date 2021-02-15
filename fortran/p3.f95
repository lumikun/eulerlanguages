PROGRAM p3
  implicit none
  INTEGER*8 :: n = 600851475143_8
  DOUBLE PRECISION :: real_n = 600851475143D+0
  REAL :: upper_real
  INTEGER*8 :: upper_int
  INTEGER*8 :: i

  upper_real = SQRT(real_n)
  upper_int = INT(upper_real)
  i = 3_8
  DO WHILE (MOD(n, 2_8) .eq. 0_8)
     n = n / 2_8
  END DO

  DO i = 3, upper_int
     DO WHILE (MOD(n, i) .eq. 0)
        WRITE(*,*) "N was succesfully divisible by ", i
        n = n / i
     END DO
  END DO
END PROGRAM p3
