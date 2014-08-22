
SECTIONS = skills.tex experience.tex education.tex personal.tex trainings.tex

# all: chandler ecu web-pm
all: researcher

chandler: chandler.tex
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


researcher: researcher.tex researcher.objective.tex researcher-experience.tex $(SECTIONS)
	pdflatex $@
	epdfview $@.pdf
	touch $@
	cp $@.pdf pdf
