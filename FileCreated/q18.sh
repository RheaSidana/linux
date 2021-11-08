#!/bin/bash

echo "Enter the numbers (press '-' at the end) : "
size=0
while [ $size -ge 0 ]
do
	read input
	if [ $input == "-" ]
	then
		size=$((size-1))
		break
	fi
	a[$size]=$input
	size=$((size+1))
done

echo "Array is : "
echo -n ${a[@]} " "
echo ""

echo "Printing in reverse order : "
for (( i=size; i>=0; i-- ))
do
	echo -n ${a[$i]} " "
done
echo ""
