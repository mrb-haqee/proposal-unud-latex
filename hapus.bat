@echo off
latexindent.exe -s ./bab/*.tex
latexindent.exe -s ./header/*.tex
latexmk -c -bibtex
del *.synctex.gz
del *.synctex(busy)
del *.log
exit

