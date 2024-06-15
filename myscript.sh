#! /bin/bash
if [ $# -ne 1 ]
then
	echo "I need exactly 1 parameter"
	exit 1
else
	cd /tmp
	touch `date`-$1
	ls -ltrh | tail -5
	echo "done"
	exit 0
fi
