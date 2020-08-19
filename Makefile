all: bmc_article.pdf

bmc_article.pdf: bmc_article.bbl bmc_article.tex 
	pdflatex bmc_article
	pdflatex bmc_article
	@grep -i warn *.log

bmc_article.bbl: bmc_article.tex bmc_article.bib
	pdflatex bmc_article
	bibtex bmc_article

clean:
	\rm -f *.aux *.blg *.log bmc_article.pdf *.bbl
