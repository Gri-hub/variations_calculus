PDFS = main.pdf

.PHONY: all clean clean-all

all: main.pdf

INCLUDES = preamble/*.tex

PARTS = lectures/*.tex

MAIN = main.tex

%.pdf: $(MAIN) $(PARTS) $(INCLUDES)
	latexrun/latexrun $*

# Cleans auxiliary files but keeps main.pdf
clean:
	latexrun/latexrun --clean

# Wipes everything, including main.pdf
clean-all:
	latexrun/latexrun --clean-all
