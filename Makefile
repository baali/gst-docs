TEX = pdflatex -interaction nonstopmode
SHARED = details.sty

.SUFFIXES: .tex

%.pdf:	%.tex
	$(TEX) $<

all: lut.pdf noc.pdf coverletter.pdf declaration.pdf

lut.pdf: $(SHARED)

noc.pdf: $(SHARED)

coverletter.pdf: $(SHARED)

declaration.pdf: $(SHARED)

clean:
	rm *.aux
	rm *.pdf
	rm *.log

.PHONY: all
