#!/bin/bash
printf "Do you want to set your git credential ? (Y/n)\n"
read -r credential
if [[ $credential == "Y" ]]; then
    ./set_credential.sh
fi
cp .gdbinit $HOME/.
cp .vimrc $HOME/.

# exporting the right bash things 
printf "Select the shell you're using\n1\tZSH\n2\tBASH\n"
read SHELL
if [[ $SHELL == "1" ]]; then
	ext="zsh"
elif [[ $SHELL == "2" ]]; then
	ext="bash"
else
	printf "Cannot do things for you"
	exit 1
fi
file=".${ext}rc"
echo "# custom config file" >> $HOME/$file
echo "export CONFIG=$HOME/config" >> $HOME/$file
echo "source \$CONFIG/source_me.${ext}" >> $HOME/$file
