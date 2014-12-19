nyomtatni.pdf: biralat.pdf jegy.pdf
	pdftk A=biralat.pdf B=jegy.pdf cat A A B output nyomtatni.pdf

biralat.pdf: biralat.tex common.tex
	pdflatex biralat.tex
	
jegy.pdf: jegy.tex common.tex
	pdflatex jegy.tex
	
boritek.pdf: boritek.tex common.tex
	pdflatex boritek.tex

all: nyomtatni.pdf boritek.pdf
	
clean: 
	rm *.log *.aux *.pdf
	
.PHONY: clean all
