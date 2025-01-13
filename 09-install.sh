#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\2[32m"
Y="\e[33m"

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

apt list --installed

if [ $? -ne 0 ]
then
    apt-get install mysql-server -y
    VALIDATE $? "Installing Mysql"
    
else
     echo -e " Mysql os already ........$Y installed"
fi

echo " script continued"