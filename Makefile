paper.pdf: paper.tex vision.tex api.tex
	pdflatex paper.tex
	bibtex paper
	pdflatex paper.tex
	pdflatex paper.tex

clean:
	rm -f *.log *.out *.aux *.bbl *.blg paper.pdf
