# /bin/env bash
declare -a path_to_export
path_to_export=(
	$HOME/flutter/bin 
	$GOPATH/bin 
	$HOME/.gem/ruby/2.6.0/bin 
	)

for p in "${!path_to_export[@]}"; do
	if [ -d "$p" ]; then
		PATH+=:$p
	fi
done

export PATH=$PATH
