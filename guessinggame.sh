filesnumber=$(ls -1 | wc -l)

function guessinggame {

	printf "Program is starting.\n\n"

	while [[ 1 -gt 0 ]]
	do
		printf "Guess the number of files in the directory:\n"
		read response

		if [[ $response -eq $filesnumber ]]
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
