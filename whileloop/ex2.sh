#!/bin/bash

read -p "How many lines of /etc/passwd would you like to see?: " NUM_LINES

LINE_NUM=1

while read LINE; do
	echo "${LINE_NUM}: ${LINE}"
	((LINE_NUM++))
	if [ $LINE_NUM -eq $NUM_LINES ]; then
		break
	fi
done < /etc/passwd
