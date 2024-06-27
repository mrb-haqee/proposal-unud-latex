@echo off

set "base_dir=%CD%"
set "directories=preambel section_bab section_header"

latexindent.exe -s proposal.tex
for %%d in (%directories%) do (
    for %%f in ("%base_dir%\%%d\*.tex") do (
        echo Processing file: %%f
        latexindent.exe -s "%%f"
    )
)

latexmk -cd -halt-on-error -interaction=nonstopmode
biber proposal
latexmk -pdf proposal.tex
exit
