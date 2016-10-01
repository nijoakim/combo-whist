VERSION=1.1.1
SOURCE=sv en
PDF=$(patsubst %,combo-whist-$(VERSION)-%.pdf,$(SOURCE))
BOOK_PDF=$(patsubst %.pdf,%-book.pdf,$(PDF))

all: $(PDF)

pdf: $(PDF)

book: $(BOOK_PDF)

clean:
	$(foreach var,$(SOURCE),cd $(var); make clean; cd ..;)
	rm -f $(PDF)
	rm -f $(patsubst %.pdf,%-book.pdf,$(PDF))

# %.pdf
combo-whist-$(VERSION)-%.pdf: %
	cd $<; make VERSION=$(VERSION)

# %-book.pdf
combo-whist-$(VERSION)-%-book.pdf: combo-whist-$(VERSION)-%.pdf
	pdfbook2 --paper=a4paper $<
