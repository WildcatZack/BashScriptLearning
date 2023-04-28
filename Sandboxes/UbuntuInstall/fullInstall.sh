#!/bin/bash

echo $( id -nGz "$USER" | grep -qzxF "sudo" )

if id -nGz "$USER" | grep -qzxF "sudo"
then
	echo "User is sudo"
else
	echo "This needs to be ran by someone in the sudo group"
	exit 1
fi

#if [[ $USER != "root" ]]; then
#	echo "This script needs to be run as root"
#	exit 1
#fi

clear

sleep 1

echo "Welcome! First we are going to get some information."

sleep 1

#has_user_name=false

#while ! $has_user_name; do
#	echo "What user are we installing this for? (type your username and hit enter.)"
#
#	read user_name
#
#	if [[ $user_name == "exit" ]];
#	then
#		echo "Goodbye"
#		exit 0
#	fi
#
#	echo "You meant $user_name. correct? (y/n)"
#
#	read user_name_answer
#
#	if [[ $user_name_answer == "y" || $user_name_answer == "Y" || $user_name_answer == "yes" ]];
#	then
#		echo "User confirmed they wanted to use $user_name."
#		has_user_name=true
#		break
#	elif [[ $user_name_answer == "exit" ]];
#	then
#		echo "Goodbye."
#		exit 0
#	fi
#done
#
#echo "$user_name selected."

selected_gh_full_name=false

while ! $selected_gh_full_name; do
	echo "What name would you like to use for github? (type your full name and hit enter)"

	read user_full_name

	if [[ $user_full_name == "exit" ]];
	then
		echo "Goodbye."
		exit 0
	fi
	echo "$user_full_name. Correct?(y/n)"

	read gh_full_name_confirm

	if [[ $gh_full_name_confirm == "y" || $gh_full_name_confirm == "Y" || $gh_full_name_confirm == "yes" ]];
	then
		echo "Name was confirmed"
		selected_gh_full_name=true
	elif [[ $gh_full_name_confirm == "exit" ]];
	then
		echo "Goodbye"
		exit 0
	fi
done

echo "Github name done. On to the next part!"

git config --global --replace-all user.name $user_full_name
