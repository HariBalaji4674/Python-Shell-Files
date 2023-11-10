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
echo "Script Name = ${ScriptName}