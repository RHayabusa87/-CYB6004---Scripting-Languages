#!/bin/bash

#ReadMe=`cat PasswordCheck.sh`
#echo "$ReadMe"
# https://stackoverflow.com/questions/7427262/how-to-read-a-file-into-a-variable-in-shell

#value=$(<PasswordCheck.sh)
#echo "$value"



bash PasswordCheck.sh
# https://stackoverflow.com/questions/13567947/run-bash-commands-from-txt-file






#read -sp 'PasswordCheck.sh'




Val_A="1. Create a folder"
Val_B="2. Copy a folder"
Val_C="3. Set a password"



case $Val_A in
    [1-9] echo "You are quite young"



#read -sp 'UserPassword : ' Pass_Var 

#PwdChk='PasswordCheck.sh'

#if read exit O "PasswordCheck.sh" exit 0 "$SecretHashedPassword"; then
if read -sp "qwerty"; then
    #echo "1. Create a folder"
case $Val_A in
    9) echo "Create a folder selected";;
    8|pork) echo "IDK...";;
    *) echo "Please select a response from numbers 1-4.";;
esac
    #"2. Copy a folder"
    #"3. Set a password"
    #exit 0

else
    #echo "Goodbye"
    #exit 1

fi



#https://www.linkedin.com/learning/search?entityType=VIDEO&keywords=bash%20case&u=2072140



#if ["$Val_A" -eq "1"]; then
#bash Foldermaker.sh



#if read "1"; then

#fi

exit 0