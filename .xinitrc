# 1. Export variables for D-Bus and systemd
# This ensures things like Thunar, Obsidian, and Dunst can talk to each other
export DISPLAY=:0
systemctl --user import-environment DISPLAY XAUTHORITY

# 2. Launch i3 with a single D-Bus session
# dbus-run-session is the modern, cleaner way to do this
exec dbus-run-session i3
