#!/bin/bash

# Copy Nemo launcher for Unity
cp files/unity-nemo.desktop /usr/share/applications/

# Set Nemo the default file manager
xdg-mime --mode system default unity-nemo.desktop inode/directory application/x-gnome-saved-search
sed -i 's/org.gnome.Nautilus.desktop/unity-nemo.desktop/g' $DEFAULTS_FILE

# Replace the Nautilus launcher with Nemo in Unity Panel's default
cp files/unity-panel-nemo.gschema.override /usr/share/glib-2.0/schemas/ 
chown root:root /usr/share/glib-2.0/schemas/unity-panel-nemo.gschema.override

# Some settings
cp files/unity-nemo.gschema.override /usr/share/glib-2.0/schemas/ 
chown root:root /usr/share/glib-2.0/schemas/unity-nemo.gschema.override

if $REMOVE_GNOME
then 
	echo "It\'s not possible to remove Nautilus without remove Unity...."
fi
