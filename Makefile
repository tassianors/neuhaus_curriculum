# my makefile
INPUT=cvNeuhaus_pt
OUTPUT=output

all: $(INPUT).pdf
	mv $(INPUT).pdf $(OUTPUT)/

$(INPUT).dvi: src/$(INPUT).tex 
	latex src/$(INPUT).tex
	latex src/$(INPUT).tex

$(INPUT).ps:$(INPUT).dvi
	dvips -t a4 -Ppdf $(INPUT)
	
$(INPUT).pdf:$(INPUT).ps
	ps2pdf -dMaxSubsetPct=100 -dSubsetFonts=true -dEmbedAllFonts=true -dCompatibilityLevel=1.2 -sPAPERSIZE=a4 $(INPUT).ps
		
clean:
	rm -f  *~ *.bak *.o *.ps *.dvi *.aux *.log *.backup *.bbl *.blg *.loa *.los html.sty *.out

clobber: clean
	rm -f $(INPUT).pdf 

install:

