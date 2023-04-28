#!/bin/bash

if [[ $USER == "root" ]]; then
	echo "You are $USER"
	apt update -y
else
	echo "You should try running this as root"
	exit 1
fi
