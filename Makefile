
all: chandler

chandler: chandler.tex Makefile
	pdflatex $@
	epdfview $@.pdf
	touch $@
