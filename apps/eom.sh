#!/bin/bash

apt-get -y install eom

# Replace default
sed -i 's/eog.desktop/eom.desktop/g' $DEFAULTS_FILE

if $REMOVE_GNOME
then 
	apt-get -y remove eog
fi
