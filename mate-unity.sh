#!/bin/bash

if [ ${EUID} -ne 0 ]
then 
	echo "You are not running this script as root!"
	exit 1
fi

export DEFAULTS_FILE='/usr/share/applications/defaults.list'
export KEEP_GNOME=false

# Add unity7-mainteners ppa
apt-get -y install software-properties-common

if [ ! -f /etc/apt/sources.list.d/unity7maintainers-ubuntu-unity7-desktop-disco.list ]
then
    add-apt-repository -y ppa:unity7maintainers/unity7-desktop
fi

# Unity desktop
apt-get -y install ubuntu-unity-desktop 

# Mate apps + Nemo
for f in apps/*.sh; do
  sh "$f" -H 
done

echo -n "Updating dconf.... "

update-desktop-database
glib-compile-schemas /usr/share/glib-2.0/schemas/
dconf update

echo "Done!"
