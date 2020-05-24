all: readme.md

readme.md: guessinggame.sh
	echo "# guessinggame project " >README.md
	echo "Simple script lets you guess no of files in current directory" >> README.md
	echo "" >> README.md
	echo "Description created on: " >> README.md
	date -Iminutes >> README.md
	echo "" >> README.md
	echo "Current version of script contains " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo " lines " >> README.md


clean:
	rm README.md
