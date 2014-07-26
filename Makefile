
SECTIONS = skills.tex short-experience.tex experience.tex education.tex personal.tex

all: chandler ecu

chandler: chandler.tex Makefile
	pdflatex $@
	epdfview chandler.pdf
	touch $@

ecu: ecu.tex ecu.objective.tex $(SECTIONS)
	pdflatex $@
	epdfview $@.pdf
	touch $@
	cp $@.pdf pdf
