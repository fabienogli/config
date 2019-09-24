#!/usr/bin/zsh
export CONFIG=$HOME/config
# edit this file
alias config="vim $CONFIG/source_me.sh"
# export editor
export EDITOR='vim'
# export git credential
export GIT='fabienogli'
# display picture
cat $CONFIG/ascii_art/main

# import custom aliases
source $CONFIG/aliases
source $CONFIG/tmp_aliases
source $CONFIG/func

# script that checks if folder exists and if so, export it to path 
source $CONFIG/utils/export_if_exists.sh
