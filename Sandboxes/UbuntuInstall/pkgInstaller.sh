#!/bin/bash

if [[ $USER == "root" ]]; then
	echo "User is root!"
else
	echo "This script needs to be run as root."
	exit 1
fi

pkg_to_remove=$1

echo "Package to install is $pkg_to_remove. Are you sure you want to install this package? (y/n/exit)"

read user_answer

if [[ $user_answer == 'y' || $user_answer == "Y" ]]; then
	echo "User answered yes!"
	apt install -y $pkg_to_remove
elif [[ $user_answer == 'n' || $user_answer == "N" ]]; then
	echo "User entered no."
	exit 1
else
	echo "User entered something else."
fi
