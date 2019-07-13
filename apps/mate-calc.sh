#!/bin/bash

apt-get -y install mate-calc


#TODO Set the Calculator key to open mate-calc

if ! $KEEP_GNOME
then 
	apt-get -y remove gnome-calculator
fi
