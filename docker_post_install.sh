#!/usr/bin/sh

if [ "$EUID" -ne 0 ]
	then echo "Please run as root"
	exit
fi

# Create docker group
groupadd docker
echo "Docker group created !"

# Add your user to the docker group
usermod -aG docker $USER
echo "User successfully added, setup is done"
