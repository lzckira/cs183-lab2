#! /bin/bash

FILE="../full/path/to/lab2-test"
LOG="/../var/log/cs183/uptime.log"

if [ -e "$FILE" ]; then
	grep -A 5 "found" $LOG | tail -5 | echo "$(date "+%m-%d-%y %T") - File \"$FILE\" has been found" >> $LOG
else
	grep -A 4 "lost" $LOG | tail -4 | echo "$(date "+%m-%d-%y %T") - File \"$FILE\" has been lost" >> $LOG
fi
