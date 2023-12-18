# Combo Whist
Combo Whist, a variant of Whist, is a trick-taking card game with a taintless bidding system. It's main goal is to avoid the high amount of randomness commonly present in Whist games without making the rules overly complicated. The ruleset is still somewhat large, yet simple.

For more detailed information as well as downloads check out the [rules and background story](http://nijoakim.com/combo-whist).

## Building
Combo whist is distributed as a LaTeX source which can generate PDFs containing the rules. To generate the ruleset for all languages in both normal and book format as well as the helper cards, run

	$ make rules

### Rules
To generate only the rules, run
	$ make rules

### Book format
The book format is a PDF which can be folded into a mini-book when printed.

### Helper cards
The _optional_ helper cards can facilitate the bidding process, making it quicker by aiding in organizing a player's thoughts.

### Languages
To only make a specific language or a set of languages, run

	$ make LANGUAGES=<languages>

For example to make only the Swedish version, run

	$ make LANGUAGES=sv

To make the Swedish and English versions, run

	$ make LANGUAGES="sv en"

### Dependencies
- TeX Live: Although large (~3 GB last time I checked), texlive-full will provide you with all the LaTeX packages you need.
- Inkscape: To include SVG-files in LaTeX, Inkscape is needed.
- Rubber: For more readable build output, the LaTeX build system rubber is used. Because LuaLaTeX support is a relatively new feature of Rubber, Rubber version 1.6.0 or later is required.

To install TeX Live and Inkscape on Debian-based systems, run

	$ sudo aptitude install texlive-full inkscape

Rubber version 1.6.0 or later can be installed from <a href="https://gitlab.com/latex-rubber/rubber">https://gitlab.com/latex-rubber/rubber</a>.

There is also the possibility to get only the TeX Live packages you need. Unfortunately, I have so far been (and possibly will be forever) too lazy to gather up exactly which ones those are.

## Versioning
Combo Whist's version format is specified as follows:

	<major version> . <minor version> . <revision> - <language>

Major version is bumped only when very major changes to the game are made. This is unlikely ever happen.

Minor version is bumped when significant changes are made to the rules. An example would be that bids are added or removed from the game.

Revision is bumped when smaller tweaks are made to the rules. An example would be changing the rank of a bid or modifying an existing bid slightly.

## Translations
Combo Whist is currently available in the following languages:

- English
- Swedish

If you want to help out to extend the list, contact me or submit a pull request.
