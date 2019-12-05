#! /bin/sh
export CONFIG=$HOME/config
# edit this file
alias econfig="vim $CONFIG/source_me.sh"
# export editor
export EDITOR='vim'
# export git credential
export GIT='fabienogli'
# display picture
cat $CONFIG/ascii_art/main

# import custom aliases
source $CONFIG/aliases
if [ -d $CONFIG/tmp_aliases ]; then
	source $CONFIG/tmp_aliases
fi
source $CONFIG/func
export PATH=$PATH:/usr/local/go/bin
# script that checks if folder exists and if so, export it to path 
source $CONFIG/utils/export_if_exists.sh
