#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\2[32m"
Y="\e[33m"

mkdir -p /home/ravi/shell-scriptlogs

LOG_FOLDER="/home/ravi/shell-scriptlogs"
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d---%H:%M:%S)
LOG_FILE_NAME="$LOG_FOLDER/$LOG_FILE   $TIMESTAMP.log"


if [ $USERID -ne 0 ]
then
    echo "ERROR :: You must have root access to install mysql"
    exit 1
fi

VALIDATE(){
    if [ $1 -ne 0 ]
    then
        echo -e " $2 ....... $R failure"
        exit 1
    else
        echo -e " $2 ....... $G success"
    fi
}

apt list --installed &>>$LOG_FILE_NAME

if [ $? -ne 0 ]
then
    apt-get install mysql-server -y &>>$LOG_FILE_NAME
    VALIDATE $? "Installing Mysql"
    
else
     echo -e " Mysql os already ........$Y installed"
fi

echo " script continued"