#!/bin/bash

if [[ $USER == "root" ]]; then
	echo "User is root!"
else
	echo "This script needs to be run as root."
	exit 1
fi



pkg_to_remove=$1

echo "Package to remove is $pkg_to_remove. Are you sure you want to fully remove this package? (y/n/exit)"

read user_answer

echo "$user_answer"

if [[ $user_answer == 'y' || $user_answer == "Y" ]]; then
	echo "User answered yes!"
	
elif [[ $user_answer == 'n' || $user_answer == "N" ]]; then
	echo "User entered no."
	exit 1
else
	echo "User entered something else."
fi
