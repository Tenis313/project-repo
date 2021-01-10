all: README.md

README.md: guessinggame.sh
	echo "Guessing Game Project" > README.md
	echo "\nDate and Time: \n" >> README.md
	date >> README.md
	echo "\nNumber of lines in guessing_game.sh:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
