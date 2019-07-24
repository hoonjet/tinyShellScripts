#!/bin/bash

# Backup data in .tar.gz format

if [ -z $1 ]; then
	echo Unable to back up data - Wrong source or target
	echo usage: $0 source_dir destination_dir
	echo destination_dir is set to source dir if omitted
else
	if [ -z $2 ]; then #If target_dir is not specified, set destination=source
		Source=$1
		Destination=$1
	else
		Source=$1
		Destination=$2
	fi

	file=output.$(date +%y%m%d%H%M%S).tar.gz
	if [ -d $Destination ]; then
		tar -cvzf $Destination/$file $Source
	else
		mkdir $Destination
		tar -cvzf $Destination/$file $Source		
	fi
fi
