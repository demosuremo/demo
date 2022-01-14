# REV001 Fri 14 Jan 2022 17:08:07 WIB
# START  Tue 13 Sep 2016 09:30:20 WIB
# Adapted from Tobias Oetiker
###########################################################################

SHELL = /bin/bash
# Define some variables
# MAKEINDEX=makeindex
INCFILES=Makefile src/beamer.tex src/HH.tex
PDFLATEX=pdflatex
PDFFILES= \
	generic.pdf \


# The default targets
all: $(PDFFILES)

# 12 ######################################################################
generic.pdf: src/generic.tex ${INCFILES}
	-mkdir pdfbuild
	(TEXINPUTS=.:`pwd`/src:${TEXINPUTS:-:} && \
	 export TEXINPUTS && \
         cd pdfbuild && \
	 $(PDFLATEX) generic && \
	 $(PDFLATEX) generic && \
	 $(PDFLATEX) generic && \
	 mv generic.pdf .. )
	 rm pdfbuild/*

# ## ######################################################################
cleanpdf: clean
	rm -f $(PDFFILES)

clean:
	rm -rf pdfbuild
	rm -f src/*.tex.bak

xfer:
	chmod 644 *.pdf  src/*
	cp os??.pdf ~/tmp/

