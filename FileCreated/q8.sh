#!/bin/bash

echo "Enter a number : "
read no
echo "Reversed Number : "
while [ $no -ne 0 ]
do
	digit=$((no%10))
	no=$((no/10))
	echo -n $digit
done
echo ""
