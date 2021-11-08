#!/bin/bash

echo "Enter the numbers (press '-' at the end) : "
max=0
pos=0
size=0
while [ $size -ge 0 ]
do
	read input
	if [[ $input == "-" ]]
	then
		size=$((size-1))
		break
	fi
	arr[$size]=$input
	if [ $input -gt $max ]
	then
		max=$input
		pos=$((size+1))
	fi
	size=$((size+1))
done

echo " "
echo "Array: ${arr[@]}"
echo "Largest element : " $max " at : " $pos
echo " "
