#!/bin/bash


case "$1" in
	start|START)
		/tmp/sleep-walkingserver &
		;;
	stop|STOP)
		kill $(cat /tmp/sleepwalkingserver.pid)
		;;
	*)
		echo "Usage sleepwalking start|stop"
		exit 1
		;;
esac
