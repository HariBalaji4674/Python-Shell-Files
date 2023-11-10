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

sudo yum update -y 

validation $1 "Update" 

sudo yum install -y mariadb-server

validation $1 "Mariadb-server" 

sudo systemctl enable mariadb

validation $1 "enables maria db " 

sudo systemctl start mariadb

validation $1 "started mariadb" 

sudo mysql_secure_installation

validation $1 "Secure Installation" 

