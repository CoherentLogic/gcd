PROGRAM GCD

  IMPLICIT NONE
  INTEGER :: A, B, C

  A = 54
  B = 24

  IF (A .LT. B) THEN
     C = A
     A = B
     B = C
  END IF

  DO
     C = MOD(A, B)
     IF (C .EQ. 0) EXIT
     A = B
     B = C
  END DO

  WRITE(*,*) 'GCD of 54 and 24 is ', B

END PROGRAM GCD
