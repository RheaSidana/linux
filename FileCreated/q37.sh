#!/bin/bash

echo "Initially the files are: "

fileContent=$(cat "$1")
echo "File 1: "
echo "$fileContent"

printf "\n\n\n"
fileContent=$(cat "$2")
echo "File 2: "
echo "$fileContent"

printf "\n\n\n"
cat $2 > tempFile.sh
filename=$2

printf "\n\n\n"
printf "\n\n\n"
echo "Copying content of $1 to $2"
cp $1 $2

printf "\n\n\n"
echo "Afer Copying"
fileContent=$(cat "$1")
echo "File 1: "
echo "$fileContent"

printf "\n\n\n"
fileContent=$(cat "$2")
echo "File 2: "
echo "$fileContent"

echo " "
rm $2
mv tempFile.sh $filename


