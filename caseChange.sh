#!/bin/bash
# Convert case of letters in a text file to all lower or upper case by using tr

BADARGS=65

if [ -z "$1" ]; then
	echo "Missing input. Usage: $0 filename (-u or -l)"
	exit $BADARGS
fi

if [ -z "$2" ]; then
	OPT=1; # lower -> upper (default)
elif [ "$2" == "-l" ] || [ "$2" == "-L" ]; then
	OPT=0 # upper -> lower 
else 
	OPT=1; # lower -> upper
fi

if [ $OPT == 1 ]; then
	txt=$(tr '[:lower:]' '[:upper:]' <"$1")
	# Change all lower case letters to upper case letters
else
	txt=$(tr '[:upper:]' '[:lower:]' <"$1")	
	# Change all upper case letters to lower case letters
fi
	
echo $txt > $1
# Overwrite the file

	
exit 0
