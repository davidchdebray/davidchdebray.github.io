#!/bin/bash
# cp cv.md Backups/"$(date +%Y-%m-%d_cv)".md

pandoc cv.md -s -c styleDark.css -A footer.html --toc -o DavidDebrayCV.html && pandoc cv.md --template=template.tex --pdf-engine=xelatex -o DavidDebrayCV.pdf
#pandoc cv.md -s -c styleLightDark.css -A footer.html --toc -o cv.html