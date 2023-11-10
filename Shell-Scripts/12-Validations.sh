#!/bin/bash

#Validations are there for the scripts

# $? == 0 --> Success
# $? == 1 --> Failure

validation(){
    if [ $1 == 0 ]
    then
        echo "$2 is Failure"
    else
        echo "$2 is Success"
    fi
}

validation $1 "MySql" 