#!/bin/bash
#Shebang

bash IPInfo.sh | sed -n '/IP Address/p'
#Path is faster than bash /home/student/Scripts/Portfolio/Week4/IPInfo.sh | sed -n '/IP Address/p'
#Works in Visual Studio Code but not in  Terminal? "IPInfo.sh: line 3: ifconfig: command not found"?

#Loads IPInfo.sh Bash file and organises the information using sed command
#IPInfo.sh was  #Get info about networking from the built-in Bash ifconfig command, parsing out the ip address lines using sed and formating the results by omitting some entries.
