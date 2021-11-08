#!/bin/bash

echo "Enter your choice : "
echo "+ : addition "
echo "- : subtraction "
echo "* : multiplication "
echo "/ : division "
read sign
echo "Enter two numbers : "
read no1
read no2

case  "$sign" in 
   "+") 
	no3=$((no1+no2))
	echo " Addition: " $no3
     ;;
   "-")
	no3=$((no1-no2))
	echo " Subtraction: " $no3
     ;;
   "*")
	no3=$((no1*no2))
	echo " Multiplication: " $no3
     ;;
   "/")
	no3=$((no1/no2))
	echo " Division: " $no3
     ;;
esac

echo " "
echo " Operation Done."

