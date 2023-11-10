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

sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo &>> $LogFile

validation $? "jenkins Repo Adding"

sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key &>> $LogFile

validation $? "Importing the key"

sudo yum upgrade -y &>> $LogFile

validation $? "Upgrading is "

# Add required dependencies for the jenkins package
sudo yum install fontconfig java-17-openjdk -y &>> $LogFile

validation $? "Java Installation"

sudo yum install jenkins -y &>> $LogFile

validation $? "jenkins"

sudo systemctl daemon-reload &>> $LogFile

validation $? "Daemon-reload "

