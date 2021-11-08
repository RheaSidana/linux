#!/bin/bash

echo "Enter the strings : "
read str1
read str2

if [ $str1 = $str2 ]
then
	echo "String 1 : " $str1
	echo "String 2 : " $str2
	echo "Strings are equal !"
else
	echo "String 1 : " $str1
	echo "String 2 : " $str2
	echo "Strings are not equal !"
	if [[ $str1 > $str2 ]]
	then
		echo "String 1 is greater than String 2 ! "
	else 
		echo "String 2 is greater than String 1 ! "
	fi
fi
