#!/bin/sh
# shell script to prepend i3status with more stuff

i3status -c ~/.i3/status.conf | while :
do
        read line
        echo "$line | mystuf" || exit 1
done
