#!/bin/bash

addRecur(){
	if [ $3 -eq 0 ]
	then
		return
	else
		c=$(($1+$2+$4))
		echo "sum: " $c
		addRecur $1 $2 $(($3-1)) $c
	fi
}

echo "Enter the two numbers : "
read no1
read no2
echo "Enter the number of times you want to add the above numbers : "
read n

echo " "
echo "Adding two numbers recursively. "
addRecur $no1 $no2 $n "0"
echo " "
