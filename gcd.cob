000100 IDENTIFICATION DIVISION.
000200 PROGRAM-ID. GCD.
000300 ENVIRONMENT DIVISION.
000400 DATA DIVISION.
000500 WORKING-STORAGE SECTION.
000550
000600 77      A PICTURE 9999.
000700 77      B PICTURE 9999.
000800 77      C PICTURE 9999.
000801 77      QUIT PICTURE 99.
000802 77      SCRATCH PICTURE 9999.
000802 77      RESULT PICTURE 9999.
000850
000900 PROCEDURE DIVISION.
001000 PROGRAM-BEGIN.
001100
001110     MOVE 54 TO A.
001120     MOVE 24 TO B.
001130     MOVE 0 TO QUIT.
001140     MOVE 0 TO RESULT.
001150
001200     IF A < B THEN
001300        MOVE A TO C
001400	      MOVE B TO A
001500        MOVE C TO B
001600     END-IF.
001700
001800     PERFORM GCD WITH TEST AFTER UNTIL QUIT=1.
001810     IF RESULT IS ZERO THEN
001820        MOVE B TO RESULT
001830     END-IF.
001840
001850     DISPLAY "GCD of 54 and 24 is ".
001860     DISPLAY RESULT.
001870
001880     STOP-RUN.
001900
002000     GCD.
002100        DIVIDE B INTO A GIVING SCRATCH REMAINDER C.
002150
002200        IF C = 0 THEN
002300           MOVE 1 TO QUIT
002400           MOVE B TO RESULT
002500        END-IF.
002600
002700        MOVE B TO A.
002800        MOVE C TO B.