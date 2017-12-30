TEX = pdflatex -interaction nonstopmode

lut.pdf:
	$(TEX) lut.tex

noc.pdf:
	$(TEX) noc.tex

coverletter.pdf:
	$(TEX) coverletter.tex

declaration.pdf:
	$(TEX) declaration.tex

clean:
	rm *.aux
	rm *.pdf
	rm *.log

all: lut.pdf noc.pdf coverletter.pdf declaration.pdf

.PHONY: lut noc coverletter declaration
