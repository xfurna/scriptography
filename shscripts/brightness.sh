
#!/bin/bash

max=$(pkexec /usr/lib/gnome-settings-daemon/gsd-backlight-helper --get-max-brightness)
cur=$(pkexec /usr/lib/gnome-settings-daemon/gsd-backlight-helper --get-brightness)

step=$((max/100+1))

case "$1"
in
+) new=$((cur+step));;
-) new=$((cur-step));;
esac
pkexec /usr/lib/gnome-settings-daemon/gsd-backlight-helper --set-brightness $new
