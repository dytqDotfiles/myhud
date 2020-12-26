#!/bin/bash
while true
do
	make generate
	feh --bg-max out/autogen.png
	sleep 1
done
