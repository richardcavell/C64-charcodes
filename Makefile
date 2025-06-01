# C64-CharCodes
#
# A program by Richard Cavell
#      (c) 2019, 2025
#

IMAGENAME  = charcodes.d64
DSKNAME    = charcodes
PROGNAME   = c64-charcodes.bas
FILENAME   = charcodes

.PHONY: all
.PHONY: clean

all: $(PROGNAME)
	c1541 -format $(DSKNAME),aa D64 $(IMAGENAME)
	c1541 -attach $(IMAGENAME) -write $(PROGNAME) $(FILENAME)

clean:
	$(RM) $(IMAGENAME)

vice: $(IMAGENAME)
	x64sc -autostart $(IMAGENAME)
