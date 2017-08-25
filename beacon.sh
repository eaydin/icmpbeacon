#!/bin/bash

for i in $(cat beacon); do
	ping -c1 -s0 $i > /dev/null 2>&1 && exit 0
done
exit 1