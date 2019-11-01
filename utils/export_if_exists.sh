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

# export for no env value with bin folder
declare -a exports
exports=(
	$HOME/flutter
	$GOPATH
	$STARTER
	)

for path in "${exports}"; do
	BIN="$path/bin"
	if [ -d "$BIN" ]; then
		PATH=$PATH:$BIN
	fi
done

export PATH=$PATH

# source starter if it exists
if [ ! -z "$STARTER" ]; then
    #source $STARTER/.aliases
fi
