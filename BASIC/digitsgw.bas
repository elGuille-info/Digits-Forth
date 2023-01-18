10 REM PRINT TAB(33);"DIGITS"
20 REM PRINT TAB(15);"CREATIVE COMPUTING  MORRISTOWN, NEW JERSEY"
30 REM PRINT:PRINT:PRINT
210 PRINT "THIS IS A GAME OF GUESSING."
220 INPUT "FOR INSTRUCTIONS, TYPE '1', ELSE TYPE '0' ";E
240 IF E=0 THEN GOTO 360
250 PRINT
260 PRINT "PLEASE TAKE A PIECE OF PAPER AND WRITE DOWN"
270 PRINT "THE DIGITS '0', '1', OR '2' THIRTY TIMES AT RANDOM."
280 PRINT "ARRANGE THEM IN THREE LINES OF TEN DIGITS EACH."
290 PRINT "I WILL ASK FOR THEN TEN AT A TIME."
300 PRINT "I WILL ALWAYS GUESS THEM FIRST AND THEN LOOK AT YOUR"
310 PRINT "NEXT NUMBER TO SEE IF I WAS RIGHT. BY PURE LUCK,"
320 PRINT "I OUGHT TO BE RIGHT TEN TIMES. BUT I HOPE TO DO BETTER"
330 PRINT "THAN THAT *****"
340 PRINT:PRINT
360 A = 0 : B = 1 : C = 3
380 REM DIM M(27,3),K(3,3)=81,L(9,3)=90:N(10)=117
390 DIM NUMS(150)
400 rem FOR I=0 TO 26: FOR J=0 TO 2: @(I*3+J)=1: NEXT J: NEXT I
401 FOR I=0 TO 26: FOR J=0 TO 2: NUMS(I*3+J)=1: NEXT J: NEXT I
410 rem FOR I=0 TO 2: FOR J=0 TO 2: @(I*3+J+81)=9: NEXT J: NEXT I
411 FOR I=0 TO 2: FOR J=0 TO 2: NUMS(I*3+J+81)=9: NEXT J: NEXT I
420 rem FOR I=0 TO 8: FOR J=0 TO 2: @(I*3+J+90)=3: NEXT J: NEXT I
421 FOR I=0 TO 8: FOR J=0 TO 2: NUMS(I*3+J+90)=3: NEXT J: NEXT I
450 rem @(90)=2: @(4*3+91)=2: @(8*3+92)=2
451 NUMS(90)=2: NUMS(4*3+91)=2: NUMS(8*3+92)=2
480 Z=26: K=8: L=2
510 X=0
520 FOR T=1 TO 3
530 PRINT
540 PRINT "TEN NUMBERS, PLEASE"
550 rem FOR M=1 TO 10 : PRINT M;": "; : INPUT @(117+M) : NEXT M
551 FOR M=1 TO 10 : PRINT M;": "; : INPUT NUMS(117+M) : NEXT M
560 FOR I=1 TO 10
570 rem W=@(117+I)-1
571 W=NUMS(117+I)-1
580 IF (W>-2) * (W<2) THEN GOTO 620
590 PRINT "ONLY USE THE DIGITS '0', '1', OR '2'."
600 PRINT "LET'S TRY AGAIN.":GOTO 530
620 NEXT I
630 PRINT: PRINT "MY GUESS","YOUR NO.","RESULT","NO. RIGHT":PRINT
660 FOR U=1 TO 10
670 rem N=@(U+117): S=0
671 N=NUMS(U+117): S=0
690 FOR J=0 TO 2
700 rem D=A*@(L*3+J+81)+B*@(K*3+J+90)+C*@(Z*3+J)
701 D=A*NUMS(L*3+J+81)+B*NUMS(K*3+J+90)+C*NUMS(Z*3+J)
710 IF S>D THEN GOTO 760
720 IF S<D THEN GOTO 740
730 IF RND(100)<50 THEN GOTO 760
740 S=D: G=J
760 NEXT J
770 rem PRINT "  ";G,"   ";@(U+117),
771 PRINT "  ";G,"   ";NUMS(U+117),
780 rem IF G=@(U+117) THEN GOTO 810
781 IF G=NUMS(U+117) THEN GOTO 810
790 PRINT " WRONG",X
800 GOTO 880
810 X=X+1
820 PRINT " RIGHT",X
830 rem @(Z*3+N)=@(Z*3+N)+1
831 NUMS(Z*3+N)=NUMS(Z*3+N)+1
840 rem @(K*3+N+90)=@(K*3+N+90)+1
841 NUMS(K*3+N+90)=NUMS(K*3+N+90)+1
850 rem @(L*3+N+81)=@(L*3+N+81)+1
851 NUMS(L*3+N+81)=NUMS(L*3+N+81)+1
860 Z=Z-(Z/9)*9
870 rem Z=3*Z+@(U+117)
871 Z=3*Z+NUMS(U+117)
880 K=Z-(Z/9)*9
890 rem L=@(U+117)
890 L=NUMS(U+117)
900 NEXT U
910 NEXT T
920 PRINT
930 IF X>10 THEN GOTO 980
940 IF X<10 THEN GOTO 1010
950 PRINT "I GUESSED EXACTLY 1/3 OF YOUR NUMBERS."
960 PRINT "IT'S A TIE GAME."
970 GOTO 1030
980 PRINT "I GUESSED MORE THAN 1/3 OF YOUR NUMBERS."
990 PRINT "I WIN."
1000 GOTO 1030
1010 PRINT "I GUESSED LESS THAN 1/3 OF YOUR NUMBERS."
1020 PRINT "YOU BEAT ME.  CONGRATULATIONS *****"
1030 PRINT
1040 INPUT "DO YOU WANT TO TRY AGAIN (1 FOR YES, 0 FOR NO) ";X
1070 IF X=1 THEN GOTO 400
1080 PRINT:PRINT "THANKS FOR THE GAME."
1090 END