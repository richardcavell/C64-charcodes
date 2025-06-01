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

.DEFAULT: all
.PHONY:   all

all: $(PROGNAME)
	petcat -w2 -o $(TOKENIZED) -- $(PROGNAME)
	c1541 -format $(DSKNAME),aa D64 $(IMAGENAME)
	c1541 -attach $(IMAGENAME) -write $(TOKENIZED) $(FILENAME)

.PHONY: info

info:
	@echo "Your options are:"
	@echo "make all"
	@echo "make clean"
	@echo "make info"
	@echo "make vice"    # Run the program in the VICE emulator
	@echo "make mame"    # Run the program in the MAME emulator

.PHONY: clean

clean:
	$(RM) $(IMAGENAME) $(TOKENIZED)

.PHONY: vice

vice: $(IMAGENAME)
	x64sc -autostart $(IMAGENAME)

.PHONY: mame

mame: $(IMAGENAME)
	mame c64 -flop1 $(IMAGENAME) -autoboot_command "load \"charcodes\",8\n" -autoboot_delay 2
