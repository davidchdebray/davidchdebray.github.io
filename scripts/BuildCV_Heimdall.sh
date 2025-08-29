#!/bin/zsh
set -e # Exit on error
clear

# --------------------------------------------------------------
#  Install Homebrew packages listed in requirements.txt
#  - Skips already‑installed items
#  - Trims stray characters/comments
#  - Falls back to casks when a formula is missing
#  - Auto‑taps homebrew/texlive for TeX‑Live components
# --------------------------------------------------------------

REQ_FILE="requirements.txt"

# ------------------------------------------------------------------
# Helper: print coloured status messages
# ------------------------------------------------------------------
msg() {
    local type=$1 ; shift
    case "$type" in
        ok)    printf "\e[32m✅  %s\e[0m\n" "$*" ;;
        warn)  printf "\e[33m⚠️  %s\e[0m\n" "$*" ;;
        err)   printf "\e[31m❌  %s\e[0m\n" "$*" ;;
        info)  printf "\e[36mℹ️  %s\e[0m\n" "$*" ;;
    esac
}

# # ------------------------------------------------------------------
# # Sanity checks
# # ------------------------------------------------------------------
# if [[ ! -f "$REQ_FILE" ]]; then
#     msg err "requirements.txt not found – aborting."
#     exit 1
# fi

# msg info "🔎  Checking requirements…"

# brew update
# brew install pandoc texlive

# msg info "✅  All done."

# --------------------- Building html & pdf --------------------- #
echo -e "\e[31;43m Building html & pdf... \e[0m"
cp ../cv.md .

# # Build HTML
# pandoc cv.md -s -c style.css -A footer.html --toc -o DavidDebrayCV.html
# mv DavidDebrayCV.html ../files/DavidDebrayCV.html
# Build PDF
pandoc cv.md --template=template.tex --pdf-engine=xelatex -o DavidDebrayCV.pdf #--verbose
mv DavidDebrayCV.pdf ../files/DavidDebrayCV.pdf
# Cleaning
rm cv.md
echo -e "\e[31;43m      ==> Done. \e[0m"