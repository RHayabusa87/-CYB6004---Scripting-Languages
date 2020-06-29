#!/bin/bash
echo "_________________________________________________________"
echo -e "| Username\t| UID\t| GID\t| Home\t| Shell\t\t|"
echo "---------------------------------------------------------"
awk 'BEGIN { FS=":" }
{ printf("\033[34m| %s\033[0m\t\t| %s\t| %s\t| %s\t| %s\t|\n", $1, $3, $4, $6, $7)
}' /etc/passwd | sed -n '/\/bin\/bash/p'
