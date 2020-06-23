#!/bin/sh
pandoc cv.md -s -c style.css --toc -o cv.html
pandoc cv.md --template=template.tex --pdf-engine=xelatex -o cv.pdf
