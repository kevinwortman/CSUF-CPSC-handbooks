
BASENAME=CPSC_undergraduate_handbook
AUX_FILE=$(BASENAME).aux
IDX_FILE=$(BASENAME).idx
TEX_FILE=$(BASENAME).tex
PDF_FILE=$(BASENAME).pdf

all: $(PDF_FILE)

$(AUX_FILE): $(TEX_FILE)
	pdflatex $(TEX_FILE)

$(IDX_FILE): $(AUX_FILE)
	makeindex $(IDX_FILE)

$(PDF_FILE): $(IDX_FILE) $(AUX_FILE)
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make $(TEX_FILE)

clean:
	latexmk -CA

