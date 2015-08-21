export DISPLAY=:1
Xvfb :1 -screen 0 1280x720x16 &
sleep 5
/usr/bin/dbus-launch
sleep 5
/usr/bin/mate-session & 
sleep 5
echo "x11vnc -display :1 -bg -nopw -xkb -noclipboard -nosetclipboard "
/bin/bash

