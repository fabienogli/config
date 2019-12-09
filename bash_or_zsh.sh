#! /bin/bash
printf "Select the shell you're using\n1\tZSH\n2\tBASH\n"
read SHELL
if [[ $SHELL == "1" ]]; then
	printf "Using zsh"
elif [[ $SHELL == "2" ]]; then
	printf "Using bash"
else
	printf "Cannot do things for you"
fi
