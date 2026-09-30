# elegantbook loads fontspec, so this document must be built with XeLaTeX.
# Setting this makes a bare `latexmk` (no flags) do the right thing.
$pdf_mode = 5;    # 5 = xelatex

# Without this, a bare `latexmk` builds every .tex in the directory, which is
# not what we want here. Restrict it to the book.
@default_files = ("Introduction to Linux.tex");
