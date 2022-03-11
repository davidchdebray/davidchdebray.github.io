#!/bin/bash

# --------------------- Requirements --------------------- #
echo -e "\e[31;43m Checking requirements... \e[0m"
cat requirements.txt | sudo apt install
echo -e "\e[31;43m      ==> Done. \e[0m"

# --------------------- Building html & pdf --------------------- #
echo -e "\e[31;43m Building html & pdf... \e[0m"
pandoc cv.md -s -c style.css -A footer.html --toc -o DavidDebrayCV.html \
&& pandoc cv.md --template=template.tex --pdf-engine=xelatex -o DavidDebrayCV.pdf
echo -e "\e[31;43m      ==> Done. \e[0m"
