#!/bin/sh
#reply PING command with PONG message
echo "PONG"  | /usr/bin/gammu-smsd-inject TEXT "$1"
