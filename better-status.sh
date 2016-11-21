#!/bin/sh

:> /dev/shm/fifo-player-song
:> /dev/shm/better-status-line

tail -f /dev/shm/fifo-player-song 2>/dev/null | while read line
do
	echo "$(cat /dev/shm/fifo-player-song ) | Micro: $(amixer get Capture | grep "Front Left"|tail -1| grep -E -o "on|off" | tail -1) |$(cat /dev/shm/better-status-line)"
done &

sleep 1 && killall -USR1 i3status &
i3status --config ~/.i3/i3status.conf | while :
do
        read line
        echo -n $line > /dev/shm/better-status-line
        echo "$(cat /dev/shm/fifo-player-song ) | Micro: $(amixer get Capture | grep "Front Left"|tail -1| grep -E -o "on|off" | tail -1) |$line" || exit 1
done
