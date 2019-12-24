#! /bin/sh
source $CONFIG/utils/env.bash
source $CONFIG/utils/path.bash

# source starter if it exists
if [ ! -z "$STARTER" ]; then
    source $STARTER/.aliases
fi
