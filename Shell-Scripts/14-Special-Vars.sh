#!/bin/bash

var1=$1
var2=$2

echo "Var1 = ${var1}"
echo "var2 = ${var2}"

echo "No of Arguments = $#"
echo "All Arguments = $@"
echo "Script Name is = $0"
ScriptName=$0
Date=$(date +%F)
LogFile=/tmp/$ScriptName-$Date.log

echo "My Script Name is = ${LogFile}"
echo "Date is = ${Date}"
echo "Script Name = ${ScriptName}"

validation() {
    if [ $1 -ne 0 ]
    then
        echo "$2 is Failure"
    else
        echo "$2 is Success"
    fi
}

sudo yum install mysql -y &>> $LogFile

validation $? "mysql"

sudo yum install git -y &>> $LogFile

validation $? "git" 

sudo yum install nginx -y &>> $LogFile

validation $? "nginx" 
