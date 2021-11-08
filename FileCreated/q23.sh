#!/bin/bash

arr1=(1 22 3 44 5 66)
arr2=(11 2 33 4 55 6)

echo "Array 1 : "
echo "${arr1[@]}"

echo "Array 2 : "
echo "${arr2[@]}"

temp=(${arr1[@]})
arr1=(${arr2[@]})
arr2=(${temp[@]})

echo ""
echo ""
echo "After Swap"
echo "Array 1 : "
echo "${arr1[@]}"

echo "Array 2 : "
echo "${arr2[@]}"

arr1=("${arr1[@]}" "77 8")
arr2=("${arr2[@]}" "7 88")

echo ""
echo ""
echo "After adding more elements"
echo "Array 1 : "
echo "${arr1[@]}"

echo "Array 2 : "
echo "${arr2[@]}"
