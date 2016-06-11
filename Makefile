INTEX = $(wildcard *.tex)
AUXEXTS = *.aux *.bbl *.bcf *.blg *.gz *.log *.nav *.out *.run.xml *.snm *.synctex.gz *.tdo *.toc

all: $(INTEX:.tex=.pdf)

%.pdf: %.tex
	pdflatex $<

.PHONY: clean clean-aux

clean-aux:
	rm -f $(AUXEXTS)

clean:
	rm -f  $(AUXEXTS) $(INTEX:.tex=.pdf)
