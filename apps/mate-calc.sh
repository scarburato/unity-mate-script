#!/bin/sh

apt-get -y install mate-calc


#TODO Set the Calculator key to open mate-calc

if $REMOVE_GNOME
then 
	apt-get -y remove gnome-calculator
fi
