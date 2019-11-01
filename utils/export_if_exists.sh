#!/usr/bin/zsh
declare -A envs
envs=(
	NODE $HOME/.npm 
	STARTER $HOME/starter	
	GOPATH $HOME/go
	)
	
for env  in "${(@k)envs}"; do
	link="$envs[$env]"
    if [ -d "$link" ]; then
        export $env=$link
    fi
done

# export PATH 
export PATH=$PATH:$HOME/flutter/bin:$GOPATH/bin

# source starter if it exists
if [ ! -z "$STARTER" ]; then
    #source $STARTER/.aliases
fi
