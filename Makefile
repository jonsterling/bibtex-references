validate: refs.bib
	biber --tool --output-safechars --fixinits --isbn-normalise --output_align --output_indent=2 --output_fieldcase=lower --output_encoding=ascii --output_file=refs.bib refs.bib

clean:
	rm *.blg
	rm -rf auto

