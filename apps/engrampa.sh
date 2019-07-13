#!/bin/bash

apt-get -y install engrampa

# Replace defualt
sed -i 's/org.gnome.FileRoller.desktop/engrampa.desktop/g' $DEFAULTS_FILE

if ! $KEEP_GNOME
then 
	apt-get -y remove file-roller
fi
