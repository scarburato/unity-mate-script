#!/bin/bash

apt-get -y install pluma

# Replace default
sed -i 's/org.gnome.gedit.desktop/pluma.desktop/g' $DEFAULTS_FILE
xdg-mime --mode system default pluma.desktop text/plain

if $REMOVE_GNOME
then 
	apt-get -y remove gedit
fi
