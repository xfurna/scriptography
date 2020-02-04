#!/bin/bash

id=$(xinput list | grep "ETPS/2 Elantech Touchpad" | cut -f2- -d'=' | cut -b 1,2)

ad=$(xinput list-props "$id" | grep "libinput Tapping Enabled (" | cut -f2- -d'(' | cut -b 1,2,3)

xinput set-prop "$id" "$ad" 1

