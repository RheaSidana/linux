#!/bin/bash

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
	a[$i]=$input
	i=$((i+1))
done
# calculating sum of the numbers
echo "Calculating the sum : "
sum=0
while [ $i -ne -1 ]
do
	sum=$((sum+a[i]))
	i=$((i-1))
done
echo "Sum : " $sum
