paper.pdf: paper.tex
	pdflatex -shell-escape paper.tex
	bibtex paper
	pdflatex -shell-escape paper.tex

clean:
	rm -f *.log *.out *.aux *.bbl *.blg paper.pdf
