#!/bin/bash

echo "Enter filenames : "
read file1
read file2

if [ ! -f $file1 ]
then
    echo "File $file1 not found"
elif [ ! -f $file2 ]
then
    echo "File $file2 not found"
else
	echo "File 1 : $file1"
	echo "Contains : "
	echo "`cat $file1`"
	printf "\n\n\n"

	echo "File 2 : $file2"
	echo "Contains : "
	echo "`cat $file2`"
	printf "\n\n\n"

	echo "Swapping files : "
	mv $file1 "temp.sh"
	mv $file2 $file1
	mv "temp.sh" $file2
	printf "\n\n\n"

	echo "After swapping : "
	echo "File 1 : $file1"
	echo "Contains : `cat $file1`"
	printf "\n\n\n"

	echo "File 2 : $file2"
	echo "Contains : "
	echo "`cat $file2`"
	printf "\n\n\n"

	echo "Again Swapping files to the original state "
	mv $file1 "temp.sh"
	mv $file2 $file1
	mv "temp.sh" $file2

	echo "Swapped !"
fi
