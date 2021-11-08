#!/bin/bash
echo "Enter your choice"
echo "1. Left Triangle"
echo "2. Right Triangle"
echo "3. Hash half Diamond"
echo "4. Descending Left Triangle"
read sign
echo "Enter the number of rows: "
read no
no=$((no+1))

echo ""

if [ $sign -eq 1 ]
then
    echo "Left Triangle :"
    echo ""
    i=1
    while [ $i -ne $no ]
    do
	j=1
	while [ $j -ne $i ]
	do
	    printf "%d " $j
	    j=$((j+1))
	done
	printf "%d " $j
	echo ""
	i=$((i+1))
    done
elif [ $sign -eq 2 ]
then
    echo "Right Triangle :"
    echo ""
    i=1
    while [ $i -ne $no ]
    do
    #space triangle
	k=$((no-1))
	while [ $k -ne $i ]
	do
	     printf "  "
	     k=$((k-1))
	done
    #number triangle
	j=1
	while [ $j -ne $i ]
	do
	    printf "%d " $j
	    j=$((j+1))
	done
	printf "%d " $j
	echo ""
	i=$((i+1))
    done
elif [ $sign -eq 3 ]
then
    echo "Hash half Diamond :"
    echo ""
    i=1
    while [ $i -ne $no ]
    do
    #left triangle
	j=1
	while [ $j -ne $i ]
	do
	    printf "# "
	    j=$((j+1))
	done
	printf "# "
	echo ""
	i=$((i+1))
    done
    i=$((no-1))
    while [ $i -ne 0 ]
    do
    #inverted left triangle
    	j=1
	while [ $j -ne $i ]
	do
	    printf "# " 
	    j=$((j+1))
	done
	printf "# "
	echo ""
	i=$((i-1))
    done
else
    echo "Descending Left Triangle :"
    echo ""
    i=$((no-1))
    while [ $i -ne 0 ]
    do
	j=$((no-1))
	while [ $j -ne $i ]
	do
	    printf "%d " $j
	    j=$((j-1))
	done
	printf "%d " $j
	echo ""
	i=$((i-1))
    done
fi
