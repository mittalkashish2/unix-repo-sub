function check {
	num_file=$(ls -l | egrep "^[^t]" | wc -l)
	if [[ $num_file -eq $1 ]]
	then
		let continue=continue-1
		echo -e "\nCongratulations! Your guess is right."
	elif [[ $num_file -gt $1 ]]
	then 
		echo -e "\nGuess was too low."
		echo -n "Make a guess again: "
	else
		echo -e "\nGuess was too high."
		echo -n "Make a guess again: "
	fi
}
echo -n "Guess the number of files in the current directory: "
continue=1
while [[ $continue -eq 1 ]]
do
	read num_files
	check $num_files
done