#!/bin/bash

echo "Enter Array 1 : "
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
	arr1[$size]=$input
	size=$((size+1))
done

echo "Enter Array 2 : "
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
	arr2[$size]=$input
	size=$((size+1))
done

arr3=("${arr1[@]}" "${arr2[@]}")

echo "Array 1: "
echo -n ${arr1[@]}
echo ""

echo "Array 2: "
echo -n ${arr2[@]}
echo ""

echo "Concatenated Array is : "
echo -n ${arr3[@]}
echo ""