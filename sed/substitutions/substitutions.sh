#!/bin/bash

FILENAME=./test.txt

if [ -f $FILENAME ]; then
	rm -rf $FILENAME
	echo "Test file" > test.txt
fi


# Replacement string
sed 's/Test file/This text was substituted using sed stream editor/' test.txt

# FLAGS: 
# iI ---> makes sed case insensitive
sed 's/TEST FILE/sed is now being insensitive.../i' test.txt

# gG ---> global replace (sed replaces only the first occurence of the search pattern in a line, so to replace all occurences we use 'g' flag
# you can a number as a flag to specify which occurence of the search pattern you want to replace

sed 's/TEST FILE/sed can write to a file with "w" flag. And also flags can be combited!/iw wflag.txt' test.txt

# Sed is NOT altering the content of the file, it's just sending its output to Standard Out
cat test.txt

# Sed can alter the content of the file:
sed -i.bak 's/Test file/This file is altered by sed/i' test.txt
cat test.txt
cat test.txt.bak

# How to escape characters
echo '/home/ziemian' | sed 's/\/home\/ziemian/\/export\/users\/ziemian/'
echo '/home/ziemian' | sed 's#/home/ziemian#/export/users/ziemian#'
echo '/home/ziemian' | sed 's:/home/jason:/export/users/ziemian:'
