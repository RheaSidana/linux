#!/bin/bash
displayMsg(){
	no=$(($3+1))
	a=$1
	if [ $a -eq 0 ]
	then
		return
	else
		echo $3 $2
		displayMsg $((a-1)) $2 $no
	fi
}

echo "Recursive Function"
echo "Enter the number : "
read no
echo "Enter the message : "
read msg

printf "\n\n"
echo "Calling Recursive function : "

displayMsg $no $msg "1"
