#/usr/bin/env bash
# file: guessinggae.sh

function countfiles(){
  #statements
  echo $(find . -type f | wc -c)

}

count=$(countfiles)
echo filecount is $count

getout=1
while [[ $getout -ne 0 ]]
do
  echo "how many files are there?"
  read response
  echo "you entered $response"
  let getout=$response
done

if [[ $1 =~ ^[ABCD] ]]
then
  echo "A B C D"
else
  echo "it is not"
fi
