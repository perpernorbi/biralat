nyomtatni.pdf: biralat.pdf jegy.pdf
	pdftk A=biralat.pdf B=jegy.pdf cat A A A B output nyomtatni.pdf

biralat.pdf: biralat.tex common.tex
	pdflatex biralat.tex
	
jegy.pdf: jegy.tex common.tex
	pdflatex jegy.tex
	
all: nyomtatni.pdf
	
clean: 
	rm *.log *.aux *.pdf
	
.PHONY: clean all