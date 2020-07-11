all: README.md

README.md: guessinggame.sh
	echo "## Guessing Game" > README.md
	date +"**make** was run at *%d-%m-%y %T*" >> README.md
	printf "Number of lines of code in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
