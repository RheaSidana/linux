#!/bin/bash
echo "Printing all the files in the current directory : "
allFiles=$(ls -h)
echo "$allFiles"
printf "\n\n\n"

echo "Printing filenames starting with j or m in the current directory. "
startM=$(ls -h -d [jm]*)
echo "$startM"
printf "\n\n\n"

echo "Removing files starting with j or m : "
removeJM=$(rm [jm]*)
echo "$removeJM"

echo "Printing all the files in the current directory : "
allFiles=$(ls -h)
echo "$allFiles"
printf "\n\n\n"

echo "Printing filenames starting with j or m in the current directory. "
startM=$(ls -h -d [jm]*)
echo "$startM"
printf "\n\n\n"

#creating empty temp files again to original state
createAgain=$(touch jojoFile.txt mytempFile.txt)
echo "$createAgain"
