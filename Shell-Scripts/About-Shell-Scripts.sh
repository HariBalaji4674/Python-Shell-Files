What is Shell ?
    A Shell is a place where we execite the several commands in one place to interact with the Operating System Files and storages

Why Shell Scripts?
    To Automate the repetative tasks 
    Automating the Software Installations
    Automating the Security and software patches
    Automating the Updates
    Monitoring the systen alarms
    Raise Notifications Based on the requirements
    troubleshoot and audit logs
    Cronjobs for repatative tasks montly,hourly etc..

To connect with any server we need to use the command --> ssh -i <private-key-filepath> username@ipaddress.

Variables: 
    Declaring Inside the Script
    Using Commands Inside the Script 
    Taking The Variables from Command Line
    read command

Conditions :

If else conditions:

    if [ x -ne y ]
    then
        echo "These statements will execute"
    else
        echo "These Statements will execute"
    fi
Nested If else:

    if [ x -ne y ]
    then
            if [ y -eq z ]
        then
            echo "These statements will execute"
        else
            echo "These Statements will execute"
        fi
    else
        echo "These Statements will execute"
    fi
    
Exit Status in Shell Script:

$? --> This represents the previous commands status either 0 or 1 

$? == 0  --> represents the previous command is success
$? == 1  --> represents the previous command is failure


    