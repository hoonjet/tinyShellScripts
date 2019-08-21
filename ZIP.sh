#!/bin/bash
# ZIP.sh: Identifies the city and state from given ZIP code by using city-data.com,

BADARGS=65

if [ -z $1 ];then
	echo "Missing ZIP code"
	echo "Example: ./ZIP.sh 02139"
	exit $BADARGS

else
	RESULT=$(curl -s -dump "http://www.city-data.com/zips/$1.html" | grep -i '<title>' | cut -d\( -f2 | cut -d\) -f1)
	# 1) Get the page data using curl
	# 2) Parse needed data (city and state) by using grep and cut
	
	if [[ $RESULT == *"<title>"* ]]; then
	# If ZIP code is not in the data base, it will return
	# <title>Page not found - Citi-Data.com</title>	
		echo "Unable to find ZIP code $1 from www.city-data.com"
	else
		echo "ZIP code $1 is in	$RESULT"
	fi

fi

exit 0
