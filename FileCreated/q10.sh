#!/bin/bash

echo " Enter numbers : "
read no1
read no2
no3=`echo $no1+$no2 | bc `

echo "Addition of real numbers : " $no3
