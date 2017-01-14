#!/bin/bash
from=$SMS_1_NUMBER
msg=$SMS_1_TEXT
msg_count=$SMS_MESSAGES
LOGFILE=/opt/gammu/sms.txt

# Check for sender number
if [ $from != "+98XXXXXXXXXX" ]; then
        echo "not me :: $from " >> $LOGFILE
       exit
fi

echo "message : $msg from: $from " >> $LOGFILE

# Handle commands
case $msg in
	"A")
            	/opt/gammu/a.exp $from &
        ;;
	"B")
            	/opt/gammu/b.exp $from &
        ;;
	"C")
            	/opt/gammu/c.exp > $LOGFILE 2>&1 
        ;;
	*) echo "undefined command $msg " >> $LOGFILE
esac
