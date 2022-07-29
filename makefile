# Version configuration
VERSION=dev
VERSION_BASE=1.4.2
LANGUAGES=sv en

# Files
PDF=$(patsubst %,combo-whist-rules-$(VERSION)-%.pdf,$(LANGUAGES))
BOOK_PDF=$(patsubst %.pdf,%-book.pdf,$(PDF))
TEX=$(wildcard *.tex)
SVG=$(wildcard *.svg)
LUA=$(wildcard *.lua)

.PHONY: all
all: pdf

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
view: pdf
	for lang in $(LANGUAGES) ; do \
		cd $$lang ; \
		make view VERSION=$(VERSION) VERSION_BASE=$(VERSION_BASE); \
		cd .. ; \
	done

# %.pdf
combo-whist-rules-$(VERSION)-%.pdf: % $(TEX) $(SVG) $(LUA) makefile makefile.common
	@cd $<; make copy-down VERSION=$(VERSION) VERSION_BASE=$(VERSION_BASE)

# %-book.pdf
combo-whist-rules-$(VERSION)-%-book.pdf: combo-whist-rules-$(VERSION)-%.pdf
	pdfbook2 --paper=a4paper --short-edge $<
