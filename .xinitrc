# Pass the DISPLAY variable to systemd so services like Dunst can see it
systemctl --user import-environment DISPLAY XAUTHORITY

exec i3

