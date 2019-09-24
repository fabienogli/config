#!/usr/bin/zsh
printf "Do you want to set your git credential ? (Y/n)\n"
read -r credential
if [[ $credential == "Y" ]]; then
    ./set_credential.sh
fi
cp .gdbinit $HOME/.
cp .vimrc $HOME/.
echo "# custom config file\nsource source_me.sh" >> $HOME/.zshrc
source $HOME/.zsrhc
