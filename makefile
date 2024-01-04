# Version configuration
VERSION=1.5.1
VERSION_BASE=1.5.1
LANGUAGES=sv en

# Files
RULES=$(patsubst %,combo-whist-rules-$(VERSION)-%.pdf,$(LANGUAGES))
RULES_BOOK=$(patsubst %.pdf,%-book.pdf,$(RULES))
CARDS=$(patsubst %,combo-whist-cards-$(VERSION)-%.pdf,$(LANGUAGES))
TEX=$(wildcard *.tex)
SVG=$(wildcard *.svg)
LUA=$(wildcard *.lua)

.PHONY: all
all: rules rules-book cards

.PHONY: rules
rules: $(RULES)

.PHONY: rules-book
rules-book: $(RULES_BOOK)

.PHONY: cards
cards: $(CARDS)

.PHONY: clean
clean:
	$(foreach var,$(LANGUAGES),cd $(var); $(MAKE) clean; cd ..;)
	rm -f $(RULES)
	rm -f $(patsubst %.pdf,%-book.pdf,$(RULES))
	rm -f $(CARDS)

.PHONY: view
view: rules cards
	for lang in $(LANGUAGES) ; do \
		cd $$lang ; \
		$(MAKE) view VERSION=$(VERSION) VERSION_BASE=$(VERSION_BASE); \
		cd .. ; \
	done

# %rules.pdf
combo-whist-rules-$(VERSION)-%.pdf: % $(TEX) $(SVG) $(LUA) makefile makefile.common
	@cd $<; $(MAKE) rules VERSION=$(VERSION) VERSION_BASE=$(VERSION_BASE)
	cp $</rules.pdf $@

# %rules-book.pdf
.NOTPARALLEL: combo-whist-rules-$(VERSION)-%-book.pdf # Uses temporary files with non-unique names
combo-whist-rules-$(VERSION)-%-book.pdf: combo-whist-rules-$(VERSION)-%.pdf
	pdfbook2 --paper=a4paper --short-edge $<

# %cards.pdf
combo-whist-cards-$(VERSION)-%.pdf: % $(TEX) $(SVG) $(LUA) makefile makefile.common
	@cd $<; $(MAKE) cards VERSION=$(VERSION) VERSION_BASE=$(VERSION_BASE)
	cp $</cards.pdf $@
