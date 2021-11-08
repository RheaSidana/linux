#!/bin/bash

echo "Enter the Students (press '-' at the end) : "
size=0
while [ $size -ge 0 ]
do
	read input
	if [ $input == "-" ]
	then
		size=$((size-1))
		break
	fi
	student[$size]=$input
	size=$((size+1))
done
size=$((size+1))

echo "Length of the name of each Student"
i=0
while [ $i -ne $size ]
do
	echo ${student[$i]} " : " ${#student[$i]}
	i=$((i+1))
done
