#!/bin/bash

while true; do
	echo "1. Show disk usage."
	echo "2. Show system uptime."
	echo "3. Show the users logged into the system."

	read -p "What would you like to do? (Enter q to quit): " CHOICE

	echo ""

	case $CHOICE in
		1)
			df
			;;
		2)
			uptime
			;;
		3)
			who
			;;
		q)
			echo "Goodbye!"
			exit 0
			;;
		*)
			echo "Invalid option"
			continue
			;;
	esac
done

