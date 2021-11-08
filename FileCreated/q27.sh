#!/bin/bash
myFunc(){
	a=10
	local b=15
	echo "Locals : " $a " , " $b
	echo "Adding locals : " $((a+b))
	echo "Adding locals and global : " $((b+a+$1))
}

echo "Enter the number : "
read a

echo " "
echo " "
echo "Global : " $a

myFunc $a

echo "Checking Global after function call : " $a
echo " "
