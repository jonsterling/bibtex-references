validate: refs.bib
	biber --tool --output-safechars --fixinits --isbn-normalise --output_indent=2 --output_fieldcase=lower --output_encoding=ascii --output_file=refs.bib refs.bib
	sed -i 's/journaltitle/journal/' refs.bib

clean:
	rm *.blg
	rm -rf auto

