all: readme

clean:
	rm README.md

readme: guessinggame.sh
	touch README.md
	echo "# READ Me\n" > README.md
	date >> README.md
	echo "\n the line number of guessinggame.sh\n" >> README.md
	cat guessinggame.sh | wc -l >> README.md
