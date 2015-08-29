#!/bin/sh

while true
do
    if read line
    then
    	echo "$line" > /dev/shm/fifo-player-song
    	killall -USR1 i3status
	fi
done < /tmp/.fifo-player-song &

sleep 1 && killall -USR1 i3status &
i3status --config ~/.i3/i3status.conf | while :
do
        read line
        echo "$(cat /dev/shm/fifo-player-song ) | $line" || exit 1
done