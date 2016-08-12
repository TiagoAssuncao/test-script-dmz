all:
	pdflatex tcc.tex
	gnome-open tcc.pdf


clean:
	rm -f *~ *.dvi *.ps *.backup *.aux *.log
	rm -f *.lof *.lot *.bbl *.blg *.brf *.toc *.idx
	rm -f *.pdf

dist: clean
	tar vczf tcc-fga-latex-$(VERSION).tar.gz *

dist-clean: clean
	rm -f $(PDF_FILE) $(TARGET)

bib:
	pdflatex tcc.tex
	bibtex tcc.aux
	pdflatex tcc.tex
	gnome-open tcc.pdf

full:
	pdflatex tcc.tex
	pdflatex tcc.tex
	bibtex tcc.aux
	bibtex tcc.aux
	pdflatex tcc.tex
	pdflatex tcc.tex
	gnome-open tcc.pdf
