#!/bin/bash

apt-get -y install mate-terminal

# Set mate-terminal the default terminal
update-alternatives --set x-terminal-emulator /usr/bin/mate-terminal.wrapper

# Import the color scheme from gnome-terminal
cp files/unity-mate-terminal.gschema.override /usr/share/glib-2.0/schemas/ 
chown root:root /usr/share/glib-2.0/schemas/unity-mate-terminal.gschema.override

if $REMOVE_GNOME
then 
	apt-get -y remove gnome-terminal
fi
