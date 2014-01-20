SRC=main
OUT=combo-whist
PDFFLAGS=-interaction=nonstopmode
VIEW=evince

pdf:
	pdflatex $(PDFFLAGS) $(SRC).tex
	pdflatex $(PDFFLAGS) $(SRC).tex
	cp $(SRC).pdf $(OUT).pdf

viewpdf: pdf
	$(VIEW) $(OUT).pdf

countpdf: pdf
	pdftotext $(OUT).pdf - | wc -w

clean:
	rm -f $(SRC).toc
	rm -f $(SRC).aux
	rm -f $(SRC).log
	rm -f $(SRC).out
	rm -f $(SRC).pdf
	rm -f $(SRC).bbl
	rm -f $(SRC).blg
