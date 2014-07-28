
SECTIONS = skills.tex experience.tex education.tex personal.tex

all: chandler ecu web-pm

chandler: chandler.tex Makefile
	pdflatex $@
	epdfview chandler.pdf
	touch $@

ecu: ecu.tex ecu.objective.tex short-experience.tex $(SECTIONS)
	pdflatex $@
	epdfview $@.pdf
	touch $@
	cp $@.pdf pdf

web-pm: web-pm.tex web-pm.objective.tex web-pm-experience.tex $(SECTIONS)
	pdflatex $@
	epdfview $@.pdf
	touch $@
	cp $@.pdf pdf

