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
	arr[$size]=$input
	size=$((size+1))
done


echo "Enter the number to search : "
read search

pos=0
flag=0
echo "Searching the element in the array: "
for ((i=0;i<=size;i++))
do
	if [ ${arr[$i]} -eq $search ]
	then
		pos=$i
		flag=1
		break
	fi
done

echo "Array: ${arr[@]}"
if [ $flag -eq 1 ]
then
	pos=$((pos+1))
	echo "$search found at : $pos"
else
	echo "$search not found !"
fi
echo ""
