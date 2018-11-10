#!/bin/sh

:> /dev/shm/fifo-player-song

tail -f /dev/shm/fifo-player-song 2>/dev/null | while read line
do
	xfce4-panel --plugin-event=genmon-8:refresh:bool:true
done &

