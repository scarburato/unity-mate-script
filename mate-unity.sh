#!/bin/bash

if [ ${EUID} -ne 0 ]
then 
	echo "You are not running this script as root!"
	exit 1
fi

export DEFAULTS_FILE='/usr/share/applications/defaults.list'
export REMOVE_GNOME=false

# Add unity7-mainteners ppa
apt-get -y install software-properties-common 
add-apt-repository -y ppa:unity7maintainers/unity7-desktop

# Unity desktop
apt-get -y install ubuntu-unity-desktop 

# Mate apps + Nemo
for f in apps/*.sh; do  # or wget-*.sh instead of *.sh
  sh "$f" -H 
done

# EoG -> EoM
apt-get -y install eom


update-desktop-database

