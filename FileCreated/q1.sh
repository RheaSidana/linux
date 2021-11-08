#!/bin/bash
echo "Enter the numbers respectively: "
read no1
read no2
read no3

if [ $no1 -gt $no2 ] && [ $no1 -gt $no3 ]
then
echo $no1 "is the greatest. "

elif [ $no2 -gt $no1 ] && [ $no2 -gt $no3 ]
then
echo $no2 "is the greatest. "

else echo $no3 "is the greatest. "

fi



