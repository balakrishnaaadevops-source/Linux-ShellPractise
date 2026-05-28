#!bin/bash

# what all are pre-requisite to install mysql
# first check the user has executed with root or sudo permissions
# if yes then list out of the mysql alreday installed or not
# if not then install mysql 
USER=$(id -u)
if [ $USER -ne 0 ]; then
 echo "Run Script $0 with root user or sudo user "
 exit 1
fi
dnf list installed mysql
if [ $? -eq 0 ]; then
 echo "mysql installed alreday"
exit 1
 else 
 echo "Installing mysql"
 dnf install mysql -y
fi