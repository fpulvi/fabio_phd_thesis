

pdf:
	pdflatex --file-line-error --halt-on-error main.tex
	bibtex main.aux
	pdflatex --file-line-error --halt-on-error main.tex
	pdflatex --file-line-error --halt-on-error main.tex
	# To create a PDF with all fonts embedded
	pdf2ps main.pdf
	ps2pdf -dCompatibilityLevel=1.4 -dPDFSETTINGS=/prepress main.ps main-prepress.pdf
	


clean:
	rm -f *.aux *.bbl *.blg *.log *.out *.cb *.cb2 *.ps *~ figures/*.eps figures/*.pdf figures/*.tex figures/*~ *.toc *.synctex.*
