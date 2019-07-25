#!/bin/bash

# Compare two text files with cmp command
E_BADARGS=65

if [ -z $1 ] || [ -z $2 ]; then # There must be 2 files
	echo Wrong input - usage: $0 file1 file2
	exit $E_BADARGS=65
else
	cmp $1 $2 > /dev/null # /dev/null - hiding the output from cmp
	if [ $? -eq 0 ];then  # cmp outputs 0 if two files are the same. Return 1 otherwise
		echo "\"$1\" is the same as \"$2\""
	else  
		  echo "\"$1\" is not the same as \"$2\""
	fi
	
fi
exit 0
