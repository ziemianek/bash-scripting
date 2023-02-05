#!/bin/bash

FILENAME=./test.txt

if [ -f $FILENAME ]; then
	rm -rf $FILENAME
	echo "Test file" > test.txt
	for i in {1..5}; do
		echo "${i} LOL" >> test.txt
	done
fi

# Delete lines with sed
echo "File after deleting lines:" 
sed '/LOL/d' test.txt

# Delete comments (#) and blank files from a file:
sed '/^#/d ; /^$/d' test.txt

# Detele comments and change LOL to LMAO:
echo "LOL" >> test.txt
sed '/^#/d ; s/LOL/LMAO/' test.txt
