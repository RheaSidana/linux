#!/bin/bash

echo "Checking whether the file is writable or not : "
if [ -w $1 ]
then
	echo "File is writable "
	echo " "
	echo "File before Appending : "
	viewFile=$(cat $1)
	echo "$viewFile"
	echo " "
	echo "Enter the word you want to append"
	read word
	echo "$word" >> $1
	echo " "
	echo "File after Appending : "
	viewFile=$(cat $1)
	echo "$viewFile"
else
	echo "File is not writable"
fi
echo " "
