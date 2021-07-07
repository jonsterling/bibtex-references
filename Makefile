validate: refs.bib
	# Validate and normalize biblatex source
	biber --tool --output-safechars --fixinits --isbn-normalise --output_indent=2 --output_fieldcase=lower --output_encoding=ascii --configfile=biber-tool.conf --output_file=refs.bib refs.bib

	# Export a version that is almost compatible with bibtex
	biber --tool --output-safechars --fixinits --isbn-normalise --output_indent=2 --output_fieldcase=lower --output_encoding=ascii --output-resolve --configfile=biber-tool.conf --output_file=refs-expanded.bib refs.bib

	# biber --tool --configfile=short-bib.conf --output_file=refs-short-expanded.bib refs-expanded.bib

	# fix the broken bibtex
	python bibtex-compatibility.py refs

	# python bibtex-compatibility.py refs-short
	./cleanup.sh

clean:
	rm *.blg
	rm -rf auto

