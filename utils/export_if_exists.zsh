#! /bin/sh
source $CONFIG/utils/env.zsh
source $CONFIG/utils/path.zsh

# source starter if it exists
if [ ! -z "$STARTER" ]; then
    source $STARTER/.aliases
fi
