#!/bin/bash

apt-get -y install mate-system-monitor

# Copy MATE System Monitor launcher for Unity
cp files/unity-mate-system-monitor.desktop /usr/share/applications/

if ! $KEEP_GNOME
then 
	apt-get -y remove gnome-system-monitor
fi
