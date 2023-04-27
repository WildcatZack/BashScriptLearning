#!/bin/bash

echo "Welcome tarnished. Please select your starting class:
1 - Samurai
2 - Prisoner
3 - Prophet
"
read class

case $class in

	1)
		type="Samurai"
		hp=10
		attack=20
		;;
	2)
		type="Prisoner"
		hp=20
		attack=4
		;;
	3)
		type="Prophet"
		hp=30
		attack=4
		;;
esac

echo "You have chosen the $type class. Your HP is $hp and your attack is $attack."





# First Beast Battle

beast=$(( $RANDOM % 2 ))

echo "A beast approaches .Pick a number between 0 and 1. (0/1)"

read tarnished
echo "Beast chose: $beast"
echo "You chose: $tarnished"
if [[ $beast == $tarnished || $tarnished == "coffee" ]]; then
	echo "You have slain the beast!"
else
	echo "You Died!"
	exit 1
fi

echo "Margit approaches. Pick a number between 1 and 10. (0/10)"

margitbeast=$(( $RANDOM % 10 ))

read margituser

echo "Margit chose: $margitbeast"
echo "You Chose: $margituser"

if [[ $margitbeast == $margituser || $margituser == "coffee" ]]; then
	echo "Beast Vanquished"
elif [[ $USER == "farrowz" ]]; then
	echo "farrowz always wins!"
else
	echo "You Died"
fi
