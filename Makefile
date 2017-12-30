TEX = pdflatex -interaction nonstopmode

.SUFFIXES: .tex

%.pdf:	%.tex
	$(TEX) $<

all: lut.pdf noc.pdf coverletter.pdf declaration.pdf

lut.pdf: details.sty

noc.pdf: details.sty

coverletter.pdf: details.sty

declaration.pdf: details.sty

clean:
	rm *.aux
	rm *.pdf
	rm *.log

.PHONY: all
