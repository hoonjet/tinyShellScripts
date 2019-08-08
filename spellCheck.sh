#!/bin/bash
# Check spell by using aspell

BADARGS=65
if [ -z $1 ]; then #Missing input variables
	echo "Error: no input variable"
	echo "Usage: ./spellCheck.sh WORD"
	exit $BADARGS
fi

word=$1
output=`echo \"$word\" | aspell list`
# 'aspell list' returns
# 1) nothing if input($word) is in a dictionary
# 2) input($word) if it is not in a dictionary

if [ -z $output ]; then
	echo "A word \"$word\" is in a dictionary"
else
	echo "Unable to find \"$word\" in a dictionary"
	
	# Print possible correct words if input is not in a dictionary
	# If you don't need this function, please delete lines below
	
	output=`echo \"$word\" | aspell -a`
	# aspell -a performs similar to aspell list, but it also returns similar words in a dictionary if input is not found in a dictionary
	printf "Possible correct words"
	echo ${output##*1} #Removing head

fi
