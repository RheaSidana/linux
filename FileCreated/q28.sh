#!/bin/bash

pos=0
len=0
minLen=30
j=0
for i in $@
do
	arr[j]=$i
	len=${#i}
	if [ $len -lt $minLen ]
	then
		pos=$j
		minLen=$len
	fi
	j=$((j+1))
done

if [ ${#arr[@]} -ne 0 ]
then
	echo "Smallest String : " ${arr[$pos]}
	echo "Length : " $minLen
else
	echo "No command line argument passed."
fi
echo " "
