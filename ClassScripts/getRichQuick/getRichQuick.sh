#!/bin/bash



# Can use system variables in scripts
# echo "$PWD, $SHELL, $USER, $UID, $HOSTNAME"


echo "What is your name?(Type in your name with a space and hit enter)"

read name

echo "How old are you?(Put your age in number form and hit enter)"

read age

echo "Hello, $name, you are $age years old."

# Drawn out
#randomnum=$(( $RANDOM % 14 ))
#
#getrichage=$(( randomnum + age ))

# Compact
getrichage=$((( $RANDOM % 15) + $age ))

echo "You are going to get rich at $getrichage years old."
