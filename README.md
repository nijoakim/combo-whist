# Combo Whist
Combo Whist, a variant of Whist, is a trick-taking card game with a taintless bidding system. It's main goal is to remove the high amount of randomness commonly present in Whist games without making the rules overly complicated. The ruleset is still somewhat large, yet simple.

For more detailed information [check out the rules and background story](http://nijoakim.asuscomm.com/main.php?page=projects/combo-whist).

## Building
Combo whist is distributed as a LaTeX source which can generate pdfs containing the rules. To generate the ruleset for all languages use

	$ make

### Languages
To only make a specific language or a set of language, do

	$ make LANGUAGES=<languages>

For example to make only the Swedish version, do

	$ make LANGUAGES=sv

To make the Swedish and English versions, do

	$ make LANGUAGES="sv en"

### Book format
It is also possible to generate pdfs in book format which can be folded into a mini-book when printed. Use:

	$ make book

Of course, books can be made only for a specific language too, like so:

	$ make LANGUAGES=<languages> book

### Dependencies
Although large (~3 GB last time I checked), texlive-full will provide all that you will need. On Debian-based systems, do

	$ sudo aptitude install texlive-full

There is also the possibility to get only the texlive packages you need. Unfortunately, I have so far been (and possibly will be forever) too lazy to gather up exactly which ones they are.

## Translations
Combo Whist is currently available in the following languages:

- English
- Swedish

If you want to help out to extend the list, contact me or submit a pull request. Otherwise, this list list is likely to never be extended (unless my french miracelously improves).
