#!/bin/bash

FILENAME=$1

if [ -f $FILENAME.* ]; then
	exit 0
elif [ -d $FILENAME/ ]; then
	exit 1
else
	exit 2
fi
