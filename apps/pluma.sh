#!/bin/bash

apt-get -y install pluma

# Replace default
sed -i 's/eog.desktop/eom.desktop/g' $DEFAULTS_FILE
xdg-mime --mode system default pluma.desktop text/plain

if ! $KEEP_GNOME
then 
	apt-get -y remove gedit
fi
