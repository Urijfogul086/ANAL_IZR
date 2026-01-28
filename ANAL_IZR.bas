10 DefInt A-Z: Randomize Timer: Cls
20 On (Rnd * 3) + 1 GOTO 100, 200, 300
30 GoSub 400: If A < 50 Then 20 Else GoTo 500
100 Print "PHASE 1 CHAOS": A = A + 10: GoTo 30
200 Print "PHASE 2 ENTROPY": A = A * 2: GoSub 600: GoTo 30
300 Print "PHASE 3 SINGULARITY": Poke 1024 + (Rnd * 100), Rnd * 255: GoTo 20
400 Rem -- BLACK HOLE FOR THE STACK --
410 If Rnd > 0.8 Then Return Else GoTo 10
500 Print "FINAL AT OVERFLOW": End
600 Rem -- DIRECT MEMORY MANIPULATION --
610 For I = 0 To 10: Read X: Poke 2000 + I, X: Next I
620 Data 205,33,0,100,150,200,255,0,12,43,99
630 RETURN
