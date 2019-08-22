#!/bin/bash
# Count number of executable and non-executable commands in current $PATH

IFS=":"
exe=0 # number of executable commands
nonexe=0 # number of non-exutable commands

for directory in $PATH ; do
	if [ -d "$directory" ] ; then
	for commands in "$directory"/*; do
		if [ -x "$commands" ]; then
			exe="$(( $exe + 1 ))"
		else
			nonexe="$(( $nonexe + 1 ))"
		fi
	done
	fi
done

echo "There are $exe exectable and $nonexe non-executable commands in your path"



exit 0
