#!/bin/bash

if [ "$1" == "--update" ]; then
	ping -c1 -s0 -W 1 raw.githubusercontent.com > /dev/null 2>&1 && curl -s https://raw.githubusercontent.com/eaydin/icmpbeacon/master/beacon > beacon && exit 0
	exit 2
fi

for i in $(cat beacon); do
	ping -c1 -s0 -W 0.5 $i > /dev/null 2>&1 && exit 0
done
exit 1
