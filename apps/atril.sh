#!/bin/sh

apt-get -y install atril

# Set default
sed -i 's/org.gnome.Evince.desktop/atril.desktop/g' $DEFAULTS_FILE

if $REMOVE_GNOME
then 
	apt-get -y remove evince
fi
