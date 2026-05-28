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
validate()
{
 if [ $2 -ne 0 ]; then
 echo "Installing $1 FAILED"
 exit 1
else 
 echo "Installing $1 SUCCESS"
 
fi
}
dnf list installed mysql
if [ $? -eq 0 ]; then
echo "MYSQL installed SKIPPING ..."
else
echo "Installing MYSQL"
dnf install mysql -y
validate $?
fi
dnf list installed nginx
if [ $? -eq 0 ]; then
echo "Nginx Installed SKIPPING ..."
else
echo "Installing Nginx"
dnf install nginx -y
fi
