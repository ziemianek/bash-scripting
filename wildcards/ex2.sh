#!/bin/bash

NOW=`date +%Y%m%d`

read -p "Please enter a file extension: " EXTENSION
read -p "Please enter a file prefix (Press ENTER for ${NOW}): " PREFIX

[ "$PREFIX" == "" ] && PREFIX="$NOW"

for FILE in *.$EXTENSION; do
	mv -v "$FILE" "${PREFIX}-${FILE}"
done
