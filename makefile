all: readme.md
ft_journal_entry:
	touch draf_entry_journal.txt

readme.md: guessinggame.sh
	echo "# guessinggame project " >readme.md
	echo "Simple script made for uwb course, lets you guess no of files in current directory" >> readme.md
	echo "### description created on: " >> readme.md
	date -Iminutes >> readme.md
	echo "Current version of script contains " >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md
	echo " lines " >> readme.md


clean:
	rm readme.md
