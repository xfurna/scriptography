#!/bin/sh/
current=$(dconf read /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/background-transparency-percent)
case "$1"
in	
+) updated=$((current+8));;
-) updated=$((current-8));;
esac
dconf write /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/background-transparency-percent $updated


