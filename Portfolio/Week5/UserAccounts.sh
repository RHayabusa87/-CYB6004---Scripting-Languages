#!/bin/bash
echo "_________________________________________________________" #Providing table boundary.
echo -e "| \e[32mUsername\e[39m\t| \e[33mUID\e[39m\t| \e[35mGID\e[39m\t| \e[36mHome\e[39m\t| \e[40mShell\e[49m\t\t|" #Table heading text and colours
echo "---------------------------------------------------------" #Providing table boundary.
awk 'BEGIN { FS=":" } 
{ printf("| \033[34m%s\033[0m\t\t| %s\t| %s\t| %s\t| %s\t|\n", $1, $3, $4, $6, $7)
}' /etc/passwd | sed -n '/\/bin\/bash/p'

#Awk with pre-defined variable Field Seperator "FS".
#Awk is actually a programming language unto itself which assists in the formatting of
#Awk's Echo-like command, "printf" to display the 1st, 3rd, 4th, 6th and 7th entries.