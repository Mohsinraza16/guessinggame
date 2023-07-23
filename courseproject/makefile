# Makefile for generating README.md

# Variables
PROJECT_TITLE := "Guessing Game Project"
GITHUB_PAGES_URL := "https://github.com/Mohsinraza16/guessinggame"

# Targets and rules
README.md: guessinggame.sh
	echo "# $(PROJECT_TITLE)" > README.md
	echo "Makefile execution date: $$(date)" >> README.md
	echo "Number of lines of code in guessinggame.sh: $$(wc -l < guessinggame.sh)" >> README.md

github_pages: README.md
	git add README.md
	git commit -m "Update README.md"
	git push origin master
	git branch -D gh-pages || true
	git subtree split --prefix README.md -b gh-pages
	git push -f origin gh-pages

