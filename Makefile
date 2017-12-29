TEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error

lut:
	$(TEX) lut.tex

noc:
	$(TEX) noc.tex

coverletter:
	$(TEX) coverletter.tex

declaration:
	$(TEX) declaration.tex

clean:
	rm *.aux
	rm *.pdf
	rm *.log

.PHONY: lut noc coverletter declaration
