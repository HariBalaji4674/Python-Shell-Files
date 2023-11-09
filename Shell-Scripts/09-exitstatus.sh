#!/bin/bash

#exit status checking

sudo yum install git -y

if [ $? -eq 0 ]
then
    echo "This Command is executed"
else
    echo "I got Error command"
fi 