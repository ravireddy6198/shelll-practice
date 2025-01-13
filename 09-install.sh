#!/bin/bash

if [ $(id -u) -ne 0 ]
then
    echo "ERROR :: You must have root access to install mysql"
    exit 1
fi

apt list installed mysql

if [ $? -ne 0 ]
then
    apt install mysql-server -y
    if [ $? -ne 0 ]
    then
        echo " Mysql installing ....... failure"
    else
        echo " Mysql installing ....... success"
    fi
else
    echo " Mysql os already ........ installed"
fi

echo " script continued"