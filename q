#!/usr/bin/zsh
# Set GOPATH var because we need it for JOB
GOPATH=$HOME/go
declare -A env
env[NODE]=$HOME/.npm
env[STARTER]=$HOME/starter
env[GOPATH]=$GOPATH

for k in "${(@k)env}"; do
    val=$env[$k]
    if [ -d "$val" ]; then
        export $k=$val
        export PATH=$PATH:$val/bin
    fi
done

# source starter if it exists
if [ ! -z "$STARTER" ]; then
    source $STARTER/.aliases
fi
