#!/bin/bash

echo "File contains: "
command=$(cat AwkNumbers.txt)
echo "$command"

echo "Adding numbers"
command=$(awk '{sum += $1}END{print sum}' AwkNumbers.txt )
echo "Sum : $command"
echo " "
