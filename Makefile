
SECTIONS = skills.tex experience.tex education.tex personal.tex trainings.tex

# all: chandler ecu web-pm
all: ecu 

chandler: chandler.tex
	pdflatex $@
	epdfview $@.pdf
	touch $@

ecu: ecu.tex ecu.objective.tex short-experience.tex $(SECTIONS)
	pdflatex $@
	cp $@.pdf pdf
	cp $@.pdf ../downloads
	touch $@

web-pm: web-pm.tex web-pm.objective.tex web-pm-experience.tex $(SECTIONS)
	pdflatex $@
	cp $@.pdf pdf
	epdfview $@.pdf
	touch $@


researcher: researcher.tex researcher.objective.tex researcher-experience.tex $(SECTIONS)
	pdflatex $@
	cp $@.pdf pdf
	epdfview $@.pdf
	touch $@

clean:
	rm -rf chandler ecu web-pm researcher
