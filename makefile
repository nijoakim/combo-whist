VERSION=1.1.1
NON_BOOK_PDF=$(filter-out *-book.pdf, $(wildcard *.pdf))

all:
	cd en; make VERSION=$(VERSION) # English
	cd sv; make VERSION=$(VERSION) # Swedish

clean:
	cd en; make clean
	cd sv; make clean
	rm *.pdf

book: all
	pdfbook2 --paper=a4paper $(shell find . ! -name "*-book.pdf" -name "*.pdf" -maxdepth 1)
