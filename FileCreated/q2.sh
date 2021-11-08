#!/bin/bash

echo "Enter the number : "
read no

fact=1

while [ $no -gt 1 ]
do
  fact=$((fact*no))
  no=$((no-1))
done

echo "Factorial is : " $fact
