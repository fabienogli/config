#! /bin/sh
printf "Select the shell you're using\n1\tZSH\n2\tBASH\n"
read SHELL
if [[ $SHELL == "1" ]]; then
	$ext="zsh"
elif [[ $SHELL == "2" ]]; then
	$ext="bash"
else
	printf "Cannot do things for you"
	return 1
fi
source $CONFIG/utils/env.$ext
source $CONFIG/utils/path.$ext

# source starter if it exists
if [ ! -z "$STARTER" ]; then
    source $STARTER/.aliases
fi
