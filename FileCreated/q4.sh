#!/bin/bash

echo "Enter the String: "
read str
if [ -s $str ]
then
echo "`cat $str`"
elif [ -d $str ]
then
echo `ls -la $str`
else
echo "Invalid !"
fi
echo "  File Execution completed."
