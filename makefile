all: readme.md
ft_journal_entry:
	touch draf_entry_journal.txt

readme.md: guessinggame.sh
	echo "guessinggame project " >readme.md
	echo "description created on: " >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md

clean:
	rm readme.md
