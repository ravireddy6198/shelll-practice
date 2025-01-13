#!/bin/bash

if [ $(id-u) -ne 0 ]
then
    echo ERROR :: You must have root access to install mysql"
fi

apt install mysql-server
