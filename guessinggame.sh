#!/usr/bin/env bash

#ignore the following comments
#set -x
#guessinggame=$(find ~/ -name "guessinggame")
#availableOrNot=$(grep -w "export PATH=$guessinggame:\$PATH" ~/.bash_profile  | wc -l) #find out if .bash_profile has been mofified
# modify .bash_profile if not done already
#if [[ $availableOrNot -eq 0 ]]
#then
#	echo "export PATH=$guessinggame:\$PATH" >> ~/.bash_profile
#fi
#. ~/.bash_profile

filesnumber=$(find . -maxdepth 1 -type f | wc -l)

function guessinggame {

	printf "Program is starting.\n\n"
	reg="^[0-9]+$"

	while [[ 1 -gt 0 ]]
	do
		printf "Guess the number of files in the directory: "
		read response

		if [[ ! $response =~ $reg ]]
		then
			printf "\nInvalid response. Only interger values are possible.\n\n"
			continue

		elif [[ $response -eq $filesnumber ]]
		then
			printf "\nCongratulations, $response is the correct number of files!\n\n"
			break

		elif [[ $response -lt $filesnumber ]]
		then
			printf "\n$response is too low.\n\n"
			continue

		else
			printf "\n$response is too high.\n\n"
			continue
		fi
	done

	printf "Program is ending.\n\n"
}

guessinggame
