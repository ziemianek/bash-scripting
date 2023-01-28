#!/bin/bash

# echo "Enter filename to check its type"

# read FILENAME

# FILENAME=$1

for FILENAME in "$@"; do
	if [ -f $FILENAME.* ]; then
		echo "${FILENAME} is a regular file"
		ls -l $FILENAME.*
	elif [ -d $FILENAME/ ]; then
		echo "${FILENAME} is a directory"
		ls -l $FILENAME
	else
		echo "${FILENAME} is some other type of file"
	fi
done
