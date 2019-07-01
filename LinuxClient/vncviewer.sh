#!/bin/bash
set -x


#conky -d -X :0 -c ~/conky.conf 
export DISPLAY=:0

while [ 1 ]; do

	vncviewer -config ~/172.vnc
#	ping -c 5 127.0.0.1 >/dev/null
	sleep 5
done

