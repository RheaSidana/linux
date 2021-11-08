#!/bin/bash

userArr=("owner" "group" "others")
permission=("read" "write" "execute")
symbol=("r" "w" "x")
symbolValue=(4 2 1)

displayFileInfo(){
IFS=' '
read -ra fileArr <<< "$1"

#echo "${fileArr[@]}"
#echo "reading String char by char"
userCount=0
count=0
for str in ${fileArr[@]}
do
	#echo "str: " $str
	#file permissions
	if [ $count -eq 0 ]
	then
		echo " "
		value=0
		for (( i=1;i<${#str};))
		do
			value=$((value*10))
			echo -n "${userArr[$userCount]}-"
			for((j=0;j<3;j++))
			do
				if [[ "${str:$i:1}" == "${symbol[$j]}" ]]
				then
					echo -n "${permission[$j]} "
					value=$((value+${symbolValue[$j]}))
				fi
				i=$((i+1))
			done
			userCount=$((userCount+1))
			echo ""
		done
		echo " "
		echo "Permission Value : " $value
	#date init
	elif [ $count -eq 6 ]
	then
		return ${str}
	fi
	count=$((count+1))
done
}

echo "Enter two filenames: "
read file1
read file2
#file1="q23.sh"
#file2="q30.sh"

command1=$(ls -l $file1)
command2=$(ls -l $file2)

echo ""
#echo "Command executed "

echo "File 1: " $file1
#echo "Command 1: $command1"
displayFileInfo "$command1"
file1date=$?
echo "File 1 date: " $file1date

echo ""
echo "File 2: " $file2
#echo "Command 2: $command2"
displayFileInfo "$command2"
file2date=$?
echo "File 2 date: " $file2date

echo ""
echo "Displaying Old File: "
if [ $file1date -lt $file2date ]
then
	echo $file1
else
	echo $file2
fi
echo " "

