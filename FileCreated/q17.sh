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

echo "Before Sorting "
echo -n ${a[@]} " "
echo ""
echo "Bubble Sorting"
# applying bubble sort
for(( i=0;i<=size;i++ ))
do
	for(( j=0;j<=size;j++ ))
	do
		if [[ $((a[$j])) > $((a[$((j+1))])) ]]
		then
			temp=${a[$j]}
			a[$j]=${a[$j+1]}
			a[$j+1]=$temp
		fi
	done
done

echo "After Bubble Sorting : "
echo -n ${a[@]} " "
echo ""
