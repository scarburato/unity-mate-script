#!/bin/bash

apt-get -y install mate-system-monitor

# Show menu entry in Unity
sed -i '/OnlyShowIn=MATE;/c\OnlyShowIn=MATE;Unity;' /tmp/foo

if $REMOVE_GNOME
then 
	apt-get -y remove gnome-system-monitor
fi
