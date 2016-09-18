SRC=main
OUT=../combo-whist-en
PDFFLAGS=-nonstopmode -synctex=1 -output-directory=tmp
VIEW=zathura
TEX=$(wildcard *.tex)

all: main.pdf
	cp $< $(OUT).pdf

%.pdf: %.tex $(TEX)
	mkdir -p tmp
	max_print_line=1000000 pdflatex $(PDFFLAGS) $<
	cp tmp/$@ .
	max_print_line=1000000 pdflatex $(PDFFLAGS) $<
	max_print_line=1000000 pdflatex $(PDFFLAGS) $<
	cp tmp/$@ .

view: all
	$(VIEW) $(SRC).pdf &

clean:
	rm -f tmp/*
	rm -f *.pdf
