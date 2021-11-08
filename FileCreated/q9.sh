#!/bin/bash

echo "Enter a number : "
read no
sum=0
while [ $no -ne 0 ]
do
	digit=$((no%10))
	no=$((no/10))
	sum=$((sum+digit))
done
echo "Sum of digits of the number : " $sum