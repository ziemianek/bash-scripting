#!/bin/bash

cat /etc/shadow

ERROR_CODE=$?

if [ "$ERROR_CODE" == "0" ]; then
	echo "Command succeeded"
	exit 0
else
	echo "Command failed"
	exit 1
fi
