#! /usr/bin/env bash
declare -A envs
envs=(
	NODE $HOME/.npm 
	STARTER $HOME/starter	
	GOPATH $HOME/go
	)
	
for env in "${!envs[@]}"; do
	link="$envs[$env]"
    if [ -d "$link" ]; then
        export $env=$link
    fi
done
