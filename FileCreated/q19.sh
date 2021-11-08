#!/bin/bash

echo "Command Line Arguments are : "
for i in $@
do
  a=$1
  echo -n $a ""
  shift
done
echo " "
echo "Program Completed !"
