#!/bin/sh
printf "Do you want to set your git credential ? (Y/n)\n"
read -r credential
if [[ $credential == "Y" ]]; then
    ./set_credential.sh
fi
cp .gdbinit $HOME/.
cp .vimrc $HOME/.
echo "# custom config file" >> $HOME/.zshrc
echo "export CONFIG=$HOME/config" >> $HOME/.zshrc
echo "source \$CONFIG/source_me.sh" >> $HOME/.zshrc
