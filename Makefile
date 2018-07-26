FILENAME  = wsman
TEX       = $(FILENAME).tex
DVI       = $(FILENAME).dvi
PDF       = $(FILENAME).pdf

all:
	make tex
	make tex
	make dvipdf
	make display
clean:
	rm *.aux *.dvi *.log *.toc *~ 
tex:
	latex $(TEX)
dvipdf:
	dvipdfmx $(DVI)
display:
	evince $(PDF)
