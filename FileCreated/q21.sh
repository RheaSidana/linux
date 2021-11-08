#!/bin/bash

echo "Enter the Countries (press '-' at the end) : "
size=0
while [ $size -ge 0 ]
do
	read input
	if [ $input == "-" ]
	then
		size=$((size-1))
		break
	fi
	country[$size]=$input
	size=$((size+1))
done

echo " "
echo "Displaying Country array : "
echo -n ${country[@]} " "
echo " "
echo " "
echo "Replacing UK with United Kingdom : "
echo ${country[@]/UK/United Kingdom} " "
