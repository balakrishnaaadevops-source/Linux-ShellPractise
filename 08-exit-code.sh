#!bin/bash
LOGS_DIR="/home/ec2-user/logs"
LOGS_FILE="$LOGS_DIR/$#.log"
ls /tmp &>> $LOGS_FILE
if [ $? -eq 0 ]; then
 echo "SUCCESS"
else
 echo "FAILURE"
fi
ls /fakedir &>> $LOGS_FILE
if [ $? -eq 0 ]; then
echo "SUCCESS"
else
echo "FAILURE"
fi
ping -c1 google.com &>> $LOGS_FILE
if [ $? -eq 0 ]; then
echo "SUCCESS"
else
echo "FAILURE"
fi

