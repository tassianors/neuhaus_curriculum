INPUT=cvNeuhaus_en
OUTPUT=output/cvNeuhaus_en.pdf

all:
	latex src/$(INPUT).tex

pdf: 
	dvipdf $(INPUT).dvi $(OUTPUT)

clean:
	rm *.aux *.dvi *.log

clobber:clean
	rm *.pdf
