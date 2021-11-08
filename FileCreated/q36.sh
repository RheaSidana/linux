#!/bin/bash

fibonacci(){
	count=0
	a=0
	b=1
	for ((count=0;count<$1;count++))
	do
		c=$((a+b))
		echo -n $a " "
		a=$b
		b=$c
	done
}

echo "Enter a number "
read n

echo "Displaying Fibonacci Series : "
fibonacci $n

echo " "
echo " "
echo " "
