#!/bin/bash

id=$(xinput list | grep "ETPS/2 Elantech Touchpad" | cut -f2- -d'=' | cut -b 1,2)


#echo "$id"
xinput set-prop "$id" 334 1
