#!/bin/bash

fact(){
	f=1
	for ((i=2;i<=$n;i++))
	do
		f=$((f*i))
	done
	return $f
}

echo "Enter the number for the factorial : "
read n

echo " "
echo "Calling Factorial Function : "
fact $n
factorial=$?

echo "Factorial of $n is $factorial"
echo " "
