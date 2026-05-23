#!bin/bash
LOGS_DIR="/home/ec2-user/logs"
LOGS_FILE="$LOGS_DIR/$0.log"
VALIDATE()
{
if [ $? -eq 0 ]; then
 echo "SUCCESS"
else
 echo "FAILURE"
fi
}
ls /tmp &>> $LOGS_FILE
VALIDATE()
ls /fakedir &>> $LOGS_FILE
VALIDATE()
ping -c1 google.com &>> $LOGS_FILE
VALIDATE()
