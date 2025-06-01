# C64-CharCodes
#
# A program by Richard Cavell
#      (c) 2019, 2025
#

IMAGENAME  = charcodes.d64
DSKNAME    = charcodes
PROGNAME   = charcodes.bas
TOKENIZED  = charcodes.prg
FILENAME   = charcodes

.PHONY: all
.PHONY: clean

all: $(PROGNAME)
	petcat -w2 -o $(TOKENIZED) -- $(PROGNAME)
	c1541 -format $(DSKNAME),aa D64 $(IMAGENAME)
	c1541 -attach $(IMAGENAME) -write $(TOKENIZED) $(FILENAME)

clean:
	$(RM) $(IMAGENAME)

vice: $(IMAGENAME)
	x64sc -autostart $(IMAGENAME)
