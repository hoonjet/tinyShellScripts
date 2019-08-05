#!/bin/bash
# Take N as an input (set N=1 if omitted)
# Do cd.. N times


if [ -z $1 ]; then
	times=1 # If no input, just do 'cd..' once
else
	times=$1
fi

echo $PWD # echo current directory
for ((i=times ; i>0 ; i--)); do
	cd ..
	echo $PWD # echo updated directory
done

exec bash # in order to make CD take effect on the parent shell

exit 0
