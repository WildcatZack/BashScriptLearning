#!/bin/bash


# Getting a variable using Read
#
#echo "What is your name?"
#
# read name


# Getting a variable using a positional argument:
name=$1
compliment=$2


# Get variable from bash command
userid=$(whoami)
whereami=$(pwd)
date=$(date)

echo "You are currently logged in as $userid and you are in the directory $whereami. Also today is: $date"

echo "Good Morning $name!"

sleep 1

echo "You're looking good today $name!"

sleep 1

echo "You have the best $compliment I've ever seen $name!"
