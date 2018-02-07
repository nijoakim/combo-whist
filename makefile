VERSION=dev
VERSION_BASE=1.2.0
LANGUAGES=sv en
PDF=$(patsubst %,combo-whist-$(VERSION)-%.pdf,$(LANGUAGES))
BOOK_PDF=$(patsubst %.pdf,%-book.pdf,$(PDF))

all: pdf

pdf: $(PDF)

book: $(BOOK_PDF)

clean:
	$(foreach var,$(LANGUAGES),cd $(var); make clean; cd ..;)
	rm -f $(PDF)
	rm -f $(patsubst %.pdf,%-book.pdf,$(PDF))

view:
	@for lang in $(LANGUAGES) ; do \
		cd $$lang ; \
		make view VERSION=$(VERSION) VERSION_BASE=$(VERSION_BASE); \
		cd .. ; \
	done

# %.pdf
combo-whist-$(VERSION)-%.pdf: %
	cd $<; make cpdown VERSION=$(VERSION) VERSION_BASE=$(VERSION_BASE)

# %-book.pdf
combo-whist-$(VERSION)-%-book.pdf: combo-whist-$(VERSION)-%.pdf
	pdfbook2 --paper=a4paper $<
