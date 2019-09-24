#!/usr/bin/zsh
export CONFIG=$HOME/config
# edit this file
alias config="vim $CONFIG/source_me.sh"
# export git credential
export GIT="fabienogli"
# export editor
export EDITOR='vim'
# set work directory for go
export GOPATH=$HOME/go
# display picture
cat $CONFIG/ascii_art/godfather.txt

# import custom aliases
source $CONFIG/aliases
source $CONFIG/tmp_aliases
source $CONFIG/func

#@TODO need to add conditional statement if node/git/starter/coverletter is installed
export NODE=$HOME/.npm
export STARTER=$HOME/starter
export JOB=$GOPATH/src/gitlab.com/fabienogli/cover-letter
export PATH=$PATH:$HOME/.shortcuts/bin:$GOPATH/bin:$JOB/bin:$NODE/bin

#others
source $STARTER/.aliases

