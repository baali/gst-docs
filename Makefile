TEX = pdflatex -interaction nonstopmode

all: lut.pdf noc.pdf coverletter.pdf declaration.pdf

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

.PHONY: all
