#!/bin/bash

echo "Enter the Filename : "
read file
if [ -f $file ]
then
if [ -s $file ]
    then
      echo "Regular File"
elif [ -S $file ]
    then
      echo "Socket File"
elif [ -c $file ]
    then
      echo "Character file"
elif [ -d $file ]
    then
      echo "Directory"
elif [ -L $file ]
    then
      echo "Symbolic File"
  fi
else
  echo "File not Exists"
fi


