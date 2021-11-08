#!/bin/bash

echo " Enter the File Name : "
read file
words=`wc --words < $file`
echo " Number of words present in the File are : " $words

