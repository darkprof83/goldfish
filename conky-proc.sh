#!/bin/bash

flag="/tmp/flag-proc"
if [ -f $flag ]; then
	for p in  `tail $flag`
	do
		kill $p
	done
	rm $flag
else
	conky -p 3 -c ~/.conkyrc-proc &
	echo $! > $flag
fi
