# brahmic-maps
ISO 15919 TECkit mappings for Indic scripts in XeTeX

This package implements a set of TECkit mappings based on ISO 15919
TRANSLITERATION OF DEVANAGARI AND RELATED INDIC SCRIPTS INTO LATIN
CHARACTERS for reverse transliteration of Latin-based characters into
Indic scripts.

Full documentation including some examples is in brahmic.pdf.

sanskrit.sty and vedic-example.tex contain some rudimentary examples
of how to use the maps.

To regenerate the .map files and rebuild the .tec files, connect to
the directory containing these files and type

    make

If you don't have make, try this:

    xetex brahmic.ins

and then

    teckit_compile deva.map -o deva.tec

etc., for each .map file.
