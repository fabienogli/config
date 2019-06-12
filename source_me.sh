#!/usr/bin/zsh
export BACKUP=$HOME/config
export EDITOR='vim'										# export editor
export GOPATH=$HOME/go									# set work directory for go
export GIT="fabienogli"									# export git credential
export node=$HOME/.npm
export STARTER=$HOME/starter
export JOB=$GOPATH/src/gitlab.com/fabienogli/cover-letter
export PATH=$PATH:$HOME/.shortcuts/bin:$GOPATH/bin:$JOB/bin:$node/bin

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
