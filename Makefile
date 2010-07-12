INPUT=cvNeuhaus
OUTPUT=output/$(INPUT)

all:
	latex src/$(INPUT)_en.tex
	latex src/$(INPUT)_pt.tex

pdf:
	dvipdf $(INPUT)_en.dvi $(OUTPUT)_en.pdf
	dvipdf $(INPUT)_pt.dvi $(OUTPUT)_pt.pdf

pt:
	latex src/$(INPUT)_pt.tex
	dvipdf $(INPUT)_pt.dvi $(OUTPUT)_pt.pdf

en:
	latex src/$(INPUT)_en.tex
	dvipdf $(INPUT)_en.dvi $(OUTPUT)_en.pdf

clean:
	rm *.aux *.dvi *.log

clobber:clean
	rm *.pdf
