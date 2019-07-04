all: index.html Alex.html sathya.html clean

%.html : %.Rmd 
	Rscript -e "rmarkdown::render('$<')"

clean :
	@rm -Rf *~
