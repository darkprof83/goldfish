#!/usr/bin/env bash

flag="/tmp/flag-left"
if [ -f $flag ]; then
	for p in  `tail $flag`
	do
		kill $p
	done
	rm $flag
else
	conky -p 3 -c ~/.conky/goldfish/.conkyrc-left&
	echo $! > $flag
fi
