paper.pdf: paper.aux paper.bbl
	pdflatex -shell-escape paper.tex
	pdflatex -shell-escape paper.tex

paper.aux: paper.tex
	pdflatex -shell-escape paper.tex

paper.bbl: paper.aux paper.bib
	bibtex paper

clean:
	rm -f *.log *.out *.aux *.bbl *.blg paper.pdf
