#!/bin/bash
calMAX(){
	if [ $1 -gt $2 ]
	then
		return $1
	else
	 	return $2
	fi
}

echo "Enter the numbers"
read a
read b

calMAX $a $b

max=$?

echo "Max: " $max
