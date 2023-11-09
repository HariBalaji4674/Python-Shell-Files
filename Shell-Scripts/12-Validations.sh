#!/bin/bash

#Validations are there for the scripts

# $? == 0 --> Success
# $? == 1 --> Failure

validation(){
    if [ $1 -ne 0]
    then
        echo "Installation is Failure"
    else
        echo "Installation is Success"
    fi
}

validation 