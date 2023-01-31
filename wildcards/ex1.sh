#!/bin/bash

NOW=`date +%Y%m%d`

for FILE in *.jpg; do
	mv -v "$FILE" "${NOW}${FILE}"
done	
