#!/usr/bin/bash
#if [[ -z "$2" ]]; then
#   	printf "Replace git credential\n"
#	printf "Usage: $0 username email\n"
#	exit 1
#fi
LNAME="    name = test"
LEMAIL="    email = test@mail.com"
sed -i "s/.*name.*/$LNAME/" .gitconfig
sed -i "s/.*email.*/$LEMAIL/" .gitconfig
