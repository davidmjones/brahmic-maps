%.tec: %.map
	teckit_compile $< -o $@

all: maps

maps: deva-san.tec deva.tec beng.tec gujr.tec guru.tec knda.tec mlym.tec \
	orya.tec sinh.tec taml.tec telu.tec

deva.map deva-san.map beng.map gujr.map guru.map knda.map mlym.map \
	orya.map sinh.map taml.map telu.map: brahmic.ins brahmic.dtx
	xetex brahmic.ins

doc:
	xelatex brahmic.dtx
	xelatex brahmic.dtx
	xelatex brahmic.dtx

clean:
	- rm -f *.tec *.map brahmic.pdf *.log *.aux *.toc *.out *~
