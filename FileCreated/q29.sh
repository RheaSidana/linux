#!/bin/bash

arr=(1 2 3 4 5 6 7 8 9)
echo "Before Unset"
echo "array: ${arr[@]}"

unset arr
echo "After Unset"
echo "array: ${arr[@]}"

echo "Enter the numbers (press '-' at the end) : "
i=0
while [ $i -ge 0 ]
do
	read input
	if [ $input == "-" ]
	then
		i=$((i-1))
		break
	fi
	arr[$i]=$input
	i=$((i+1))
done

echo "Array now contains : "
echo "array: ${arr[@]}"
echo " "