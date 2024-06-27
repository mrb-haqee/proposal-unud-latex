@echo off

set "base_dir=%CD%"
set "directories=preambel section_bab section_header"
for %%d in (%directories%) do del "%CD%\%%d\*.log"

latexmk -c -bibtex
del *.log *.bbl

exit
