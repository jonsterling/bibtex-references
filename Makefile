validate: refs.bib
	biber --tool --output-safechars --fixinits --isbn-normalise --output_indent=2 --output_fieldcase=lower --output_encoding=ascii --configfile=main.conf --output_file=refs.bib refs.bib
	biber --tool --configfile=short-bib.conf --output_file=refs-short.bib refs.bib
	python bibtex-compatibility.py refs
	python bibtex-compatibility.py refs-short

clean:
	rm *.blg
	rm -rf auto

