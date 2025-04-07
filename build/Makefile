LATEX=xelatex
TEX=xetex

SRC=../src
LIB=../lib/texmf

SAMPLES=../samples

FMS=$(LIB)/fonts/misc/xetex/fontmapping/brahmic-maps

export TEXINPUTS=.:$(SRC):$(LIB):

%.tec: %.map
	teckit_compile $< -o $@

all: maps

maps: deva-san.tec deva.tec beng.tec gujr.tec guru.tec knda.tec mlym.tec \
	orya.tec sinh.tec taml.tec telu.tec

deva.map deva-san.map beng.map gujr.map guru.map knda.map mlym.map \
	orya.map sinh.map taml.map telu.map: $(SRC)/brahmic.ins $(SRC)/brahmic.dtx
	$(TEX) brahmic.ins

doc:
	$(LATEX) brahmic.dtx
	$(LATEX) brahmic.dtx
	$(LATEX) brahmic.dtx

samples:
	$(LATEX) $(SAMPLES)/vedic-example.tex

install: maps
	mkdir -p $(FMS)
	cp *.tec $(FMS)

clean:
	- rm -f *.tec *.map brahmic.pdf *.log *.aux *.toc *.out *.hd *.pdf *~
