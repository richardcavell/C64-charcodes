1 rem   c64-charcodes
2 rem by richard cavell
3 rem
4 rem https://github.com/
5 rem richardcavell/c64-charcodes
6 rem
7 rem copyright 2019, 2025
8 rem
10 cls
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
300 print a$
