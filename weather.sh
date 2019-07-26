#!/bin/bash

# Get weather information from http://wttr.in
# Please use "curl wttr.in/:help" for more information


# Usage : weather (city) 
if [ -z $1 ]; then
	# if city is not specified, use user's location
	curl -s "wttr.in/" 	
else
	curl -s "wttr.in/$1"

fi

exit 0
