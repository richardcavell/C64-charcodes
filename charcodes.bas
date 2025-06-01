1 rem   c64-charcodes
2 rem by richard cavell
3 rem
4 rem https://github.com/
5 rem richardcavell/c64-charcodes
6 rem
7 rem copyright 2019, 2025
8 rem
10 print chr$(147)
20 print "             c64-charcodes"
30 print "       a character code displayer"
40 print "           by richard cavell"
50 print "          https://github.com/"
60 print "      richardcavell/c64-charcodes"
70 print
80 print "       try using the control key"
90 print "          or the function keys"
100 print
150 a$ = "" : a = 0
160 open 1,0
200 rem this is our main loop
210 a = 0
220 get#1, a$
230 if a$<>"" then 300
240 goto 200
300 poke 211, 5:poke 214, 15:sys 58732
310 print "appearance:"
300 poke 211, 18:poke 214, 15:sys 58732
310 print " "
320 poke 211, 18:poke 214, 15:sys 58732
330 print a$
350 poke 211, 8:poke 214, 17:sys 58732
360 print "petscii:"
400 poke 211, 17:poke 214, 17:sys 58732
410 print "    "
420 poke 211, 17:poke 214, 17:sys 58732
430 print asc(a$)
500 goto 200

