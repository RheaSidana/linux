#!/bin/bash

echo "Display the message : "
nowHour=$(date "+%H")
nowMin=$(date "+%M")

#echo "Hour: " $nowHour "  Min : " $nowMin

if [[ $nowHour -ge 0 && $nowHour -le 11 ]]
then
	echo "Good Morning"
elif [[ $nowHour -ge  12 &&  $nowHour -le 15 ]]
then
	echo "Good Afternoon"
else
	echo "Good Evening"
fi

echo "Current Time: " $nowHour ":" $nowMin
echo " "
