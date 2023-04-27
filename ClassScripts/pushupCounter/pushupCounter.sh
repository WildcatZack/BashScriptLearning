#!/bin/bash

# While Loop

x=1

while [[ $x -le 10 ]]
do
	read -p "Pushups $x: Press enter to continue"
	(( x ++ ))
done
echo "Congratulations, you completed your pushups!!"

