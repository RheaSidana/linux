#!/bin/bash
echo "Sed Command : Substitution "

echo " "
echo "Before Substitution :  "

command=$(cat mytempFile.txt)
echo "$command"

echo " "
echo "Substituting :  Park Ji-min as Jimin Park"
command=$(cat mytempFile.txt | sed 's/Park Ji-min/Jimin Park/g')
echo "$command"

echo " "
echo "Substituting :  BTS as BangTan Sonyeondan"
command=$(cat mytempFile.txt |sed 's/Park Ji-min/Jimin Park/g' | sed 's/BTS/BangTan Sonyeondan/g')
echo "$command"

echo " "
