#!/bin/bash

#awk 'BEGIN { FS=":" } 
#{  print "__________________________________________________"; 
#}
#{ printf("\033[34m|%s|\033[0m         %s|%s%s%s|\n", $1, $3, $4, $6, $7) 
#}' /etc/passwd | sed -n '/\/bin\/bash/p'


#!/bin/bash
echo "__________________________________________________________________________"
echo -e "|\tUsername\t|UserID\t|GroupID|\tHome\t|\tShell    |\t\t"
echo "|_______________________|_______|_______|_______________|________________|"
awk 'BEGIN { FS=":" }
{ printf("|        %s                                              %s      %s          %s               %s|\n", $1, $3, $4, $6, $7)
}' /etc/passwd | sed -n '/\/bin\/bash/p'
