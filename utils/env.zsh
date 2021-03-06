#! /usr/bin/env zsh
declare -A envs
envs=(
	NODE $HOME/.npm 
	STARTER $HOME/starter	
	GOPATH $HOME/go)
	
for env  in "${(@k)envs}"; do
	link="$envs[$env]"
    if [ -d "$link" ]; then
        export $env=$link
    fi
done
