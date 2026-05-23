#!bin/bash
LOGS_DIR="/home/ec2-user/logs"
LOGS_FILE="$LOGS_DIR/$0.log"
VALIDATE()
{
if [ $1 -eq 0 ]; then
 echo " $2 : SUCCESS"
else
 echo " $2 : FAILURE"
fi
}
ls /tmp &>> $LOGS_FILE
VALIDATE $? "ls /tmp"
ls /fakedir &>> $LOGS_FILE
VALIDATE $? "ls /fakedir"
ping -c1 google.com &>> $LOGS_FILE
VALIDATE $? "ping -c1 google.com"
if [ $ANY_FAILED -eq 0 ]; then
echo "ALL commands success"
exit 0
else "one or more commands failed"
exit 1
fi
