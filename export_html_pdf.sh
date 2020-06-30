#!/bin/sh

cp cv.md Backups/"$(date +%Y-%m-%d_cv)".md

pandoc cv.md -s -c style.css -A footer.html --toc -o cv.html
pandoc cv.md --template=template.tex --pdf-engine=xelatex -o cv.pdf


# For Testing Purposes
# cp cv_template.md Backups/"$(date +%Y-%m-%d_cv_template)".md

# pandoc cv_template.md -s -c style.css -A footer.html --toc -o cv_template.html
# pandoc cv_template.md --template=template.tex --pdf-engine=xelatex -o cv_template.pdf
