#!/bin/bash

USERID=$(id -u)

echo $USERID

if [ $USERID -ne 0 ]
then
    echo "Print This lines : $USERID"
    exit 1
else
    echo "Exited the Command"
fi

List=$(sudo yum list installed | wc -l)

echo "List Of Packages : $List"
