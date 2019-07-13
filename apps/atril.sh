#!/bin/bash

apt-get -y install atril

# Set default
sed -i 's/org.gnome.Evince.desktop/atril.desktop/g' $DEFAULTS_FILE

if ! $KEEP_GNOME
then 
	apt-get -y remove evince
fi
