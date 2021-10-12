#!/bin/bash

pandoc cv.md -s -c styleDark.css -A footer.html --toc -o DavidDebrayCV.html \
&& pandoc cv.md --template=template.tex --pdf-engine=xelatex -o DavidDebrayCV.pdf