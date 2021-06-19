#!/bin/bash
# File guessinggame.sh
echo "Enter your guess for number of files in the current directory"
read guess
while [[ $guess =~ .*[^0-9].* ]]
do
	echo "Please enter only numeric integer values"
	read guess
done
actual=$(ls | wc -w)
# echo $actual
function guess_game() {
while [[ $guess -ne $actual ]]
do
	if [[ $guess -gt $actual ]]
	then
		echo "High. Please enter lower value"
		read guess
	else
		echo "Low. Please enter higher value"
		read guess
	fi
done
echo "Congrats you have guessed the right value $actual"
}
guess_game

