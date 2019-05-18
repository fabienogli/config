#!/usr/bin/zsh
export BACKUP=$HOME/config
export EDITOR='vim'										# export editor
export GOPATH=$HOME/go									# set work directory for go
export GIT="fabienogli"									# export git credential
export STARTER=$HOME/starter
export PATH="$HOME/.shortcuts/bin:$PATH"

#path to export
export PATH=$PATH:$GOPATH/bin

# display picture
cat $CONFIG/ascii_art/godfather.txt

# import custom aliases
source $CONFIG/aliases
source $CONFIG/tmp_aliases
source $CONFIG/func

#others
source $STARTER/.aliases

# edit this file
alias config="vim $CONFIG/source_me.sh"
