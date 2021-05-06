How to edit this database:

1. Edit the `refs.bib` file, using the biblatex format.
2. Run `make`: this will validate and format `refs.bib`, and unleash `refs-bibtex.bib` for compatibility.

How to use this database:

    \addbibresource{references/refs.bib}  % if you are using biblatex
    \bibliography{references/refs-bibtex} % if you are using bibtex
