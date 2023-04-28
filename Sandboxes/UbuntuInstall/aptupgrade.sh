#!/bin/bash

if [[ $USER == "root" ]]; then
	echo "You are root!"
	apt upgrade -y
else
	echo "This script needs to be run as root"
	exit 1
fi
exit 0
