#!/bin/bash

echo "Command line argument numbers "
i=0
for i in  $@
do
	a[$i]=$i
	i=$((i+1))
done
# calculating sum of the numbers
echo "Calculating the sum : "
echo "Array is : "
sum=0
while [ $i -ne -1 ]
do
	echo -n "${a[$i]} "
	sum=$((sum+a[i]))
	i=$((i-1))
done
echo " "
echo "Sum : " $sum
