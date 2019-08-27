#!/bin/bash
# List the information of excutable files in the directory 
# Use `whatis` - a simpler version of man

if [ -z "$1" ]; then
	Directory="/usr/bin" # Default directory
else
	Directory=$1
fi

for file in $DIRECTORY/*
do
	if [ -x $file ]; then
		whatis `basename $file`	
	fi	
done
exit 0


	

