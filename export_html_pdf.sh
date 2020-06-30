#!/bin/sh

cp cv.md Backups/"$(date +%Y-%m-%d_cv)".md

pandoc cv.md -s -c styleDark.css -A footer.html --toc -o cv.html
#pandoc cv.md -s -c styleLightDark.css -A footer.html --toc -o cv.html
pandoc cv.md --template=template.tex --pdf-engine=xelatex -o cv.pdf

