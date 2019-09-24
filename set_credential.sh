#!/usr/bin/bash
printf "Enter your username\n"
read username
printf "Do you want the git config in the current folder ? (Y/n)\n"
read gitconfig
if [[ $gitconfig == "Y" ]]; then
    printf "Enter your email\n"
    read email
    
    LNAME="    name = $username"
    LEMAIL="    email = $email"
    # replacing name and email config
    sed -i "s/.*name.*/$LNAME/" .gitconfig
    sed -i "s/.*email.*/$LEMAIL/" .gitconfig
    printf "gitconfig file modified with name and email\n"
    cp .gitconfig $HOME/.gitconfig
fi
sed -i "s/.*export GIT.*/export GIT='$username'/" source_me.sh
printf "change git credential in source_me.sh file\n"

exit 0
