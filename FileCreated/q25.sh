#!/bin/bash

#removing the file to prevent appending in the same file
rm arr.txt

#creating a file and saving the output of the ls command
ls -h >> arr.txt

#counting the number of lines in the file
lineCount=$(wc --lines arr.txt)

#spliting the result string to just display the number not the filename
IFS=' '
read -ra arr <<< "$lineCount"

#displayFileContent=$(nl arr.txt)
#echo "File Content :  $displayFileContent"
#echo " "
#echo "The no of lines in file is: "$lineCount

#first element of the array contains the number of files present in the current directory
#removing one for the file just created to save the output of the ls command
fileCount=$((${arr[0]}-1))
echo "Number of files in the current directory are: " $fileCount

#without creating a new file to save the output of ls command
#creating an array
#dir=$(pwd)
#echo "Dir: " $dir
#array=("$dir"/*)

#echo "Array: "
#echo ${array[@]}
#echo "Size : " ${#array[@]}

