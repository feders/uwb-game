#/usr/bin/env bash
# file: guessinggame.sh

function countfiles(){
  echo $(ls -1 | wc -l)

}

count=$(countfiles)

getout=1
while [[ $getout -ne 0 ]]
do
  echo
  echo "how many files are there?"
  read response
  re='^[0-9]+$'
  if ! [[ $response =~ $re ]]
  then
     echo "But that's not a number, try again?"
  else
    if [[ $response -eq $count ]]
      then
      let getout=0
    else
      if [[ $response -gt $count ]]
        then
        echo "There are fewer files, let's try again"
      else
        echo "There are more files then that, try again"
      fi
    fi #number comparison
  fi #main loop
done

echo "That's correct, congratulations!!"
