#! /bin/sh

if [ -n "$ZSH_VERSION" ]; then
   # assume Zsh
elif [ -n "$BASH_VERSION" ]; then
   # assume Bash
else
   # asume something else
fi
