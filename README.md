# A script to install Mate apps on Unity Dekstop
A simple script for install some MATE Apps on top of the Unity Desktop, it also provide some custom DCOnf settings for Nemo and the MATE Apps to try to replicate the feeling of the Unity Desktop as in Ubuntu 16.04 before they dropped the custom patches for the GNOME Apps

## Guide
1. Download Ubuntu 19.04 mini.iso from [here](http://archive.ubuntu.com/ubuntu/dists/disco/main/installer-amd64/current/images/netboot/)
2. Install the system without any desktop environment
3. Copy this repo on the system
4. Set REMOVE_GNOME to false if you want to keep the GNOME Apps
5. `sudo ./mate-unity.sh`
6. Reboot

## Issues
- MATE Calc does not launch when the Calculator key is pressed
- MATE Terminal does not use the global menu of Unity when launched via CTRL + ALT + T
- Compress option for Nemo disappear if you remove file-roller, however you can compile this extension https://github.com/juanfgs/nemo-engrampa to regain this functionality
- This script edit directly `/usr/share/applications/default.list` probably this file could be overridden by apt-get in case of an update to it
