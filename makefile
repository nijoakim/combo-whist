# Version configuration
VERSION=dev
VERSION_BASE=1.2.0
LANGUAGES=sv en

# Files
PDF=$(patsubst %,combo-whist-$(VERSION)-%.pdf,$(LANGUAGES))
BOOK_PDF=$(patsubst %.pdf,%-book.pdf,$(PDF))
TEX=$(wildcard *.tex)
PNG=$(wildcard *.png)

.PHONY: all
all:  pdf

.PHONY: pdf
pdf: $(PDF)

.PHONY: book
book: $(BOOK_PDF)

.PHONY: clean
clean:
	$(foreach var,$(LANGUAGES),cd $(var); make clean; cd ..;)
	rm -f $(PDF)
	rm -f $(patsubst %.pdf,%-book.pdf,$(PDF))

.PHONY: view
view:
	@for lang in $(LANGUAGES) ; do \
		cd $$lang ; \
		make view VERSION=$(VERSION) VERSION_BASE=$(VERSION_BASE); \
		cd .. ; \
	done

# %.pdf
combo-whist-$(VERSION)-%.pdf: % $(TEX) $(PNG)
	cd $<; make copy-down VERSION=$(VERSION) VERSION_BASE=$(VERSION_BASE)

# %-book.pdf
combo-whist-$(VERSION)-%-book.pdf: combo-whist-$(VERSION)-%.pdf
	pdfbook2 --paper=a4paper $<
