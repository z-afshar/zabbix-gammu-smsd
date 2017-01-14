#!/bin/sh
HOME=/etc
PATH=/bin:/sbin:/usr/bin:/usr/sbin
MOBILE_NUMBER=`echo "$1" | sed s#\s##`
# Send it
echo "$2"  | /usr/bin/sudo /usr/bin/gammu-smsd-inject TEXT "${MOBILE_NUMBER}"
