#usr/bin/env bash
#File: guessinggame.sh

echo "Guess My Number Game"
echo "Let's Play"

function  user_guess {
echo "Enter a guess for the number of files in this directory"
read response
Nfiles=$(ls -1 | wc -l)
}

user_guess
while [[ $response -ne $Nfiles ]]
do
if [[ $response -gt $Nfiles ]]
then
echo "Too High"
else 
echo "Too Low"
fi
user_guess
done

echo "You guessed it!!!"
echo " $Nfiles found in the current directory"

