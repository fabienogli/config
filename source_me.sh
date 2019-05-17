#!/usr/bin/zsh
export CONFIG=$HOME/.custom
export BACKUP=$HOME/config
export EDITOR='vim'										# export editor
export GOPATH=$HOME/go									# set work directory for go
export GIT="fabienogli"									# export git credential
export STARTER=$GOPATH/src/github.com/fabienogli/starter

# display picture
cat $CONFIG/ascii_art/godfather.txt

# import custom aliases
if [ -f $CONFIG/.aliases ]; then
	source $CONFIG/.aliases 
fi

# Edit this file
alias config="vim $CONFIG/source_me.sh"
