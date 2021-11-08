#!/bin/bash

echo "Enter the character : "
read ch

if [[ $ch == [[:digit:]] ]]
then
	echo "Digit"
elif [[ $ch == [[:lower:]] ]]
then
	echo "Lower Case"
elif [[ $ch == [[:upper:]] ]]
then
	echo "Upper Case"
else echo "Special Character"
fi
