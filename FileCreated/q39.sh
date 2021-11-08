#!/bin/bash

echo "Calculating the marks of the student"
marks=$(($1+$2+$3+$4+$5))
#echo "$marks"
marks=$((marks*100/500))

if [ $marks -ge 60 ]
then
	division="First Division"
elif [ $marks -ge 50 ] # && $marks -le 59 ]
then
	division="Second Division"
elif [ $marks -ge 40 ]
then
	division="Third Division"
elif [ $marks -lt 40 ]
then
	division="Fail"
fi

echo "Student Marks Obtained: " $marks
echo "Division: " $division
echo " "
