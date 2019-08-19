#!/bin/bash
# Get the file size from ls-ld 
# Parse output into an array
 
BADARGS=65
if [ -z $1 ]; then
	echo "usage: ./fileInfo fileName"
	exit $BADARGS
fi

fileInfo=$(ls -l $1)
declare -a ARRAY

ARRAY=($fileInfo)

echo "File Information for \"$1\"" 
echo ""
echo " Permission - ${ARRAY[0]}"
echo " Owner - ${ARRAY[2]}"
echo " Last modified - ${ARRAY[5]} ${ARRAY[6]} ${ARRAY[7]}"
echo " Size - ${ARRAY[4]} bytes"
echo ""
exit 0
