#!/bin/bash

bash ../Week2/PasswordCheck.sh
# https://stackoverflow.com/questions/13567947/run-bash-commands-from-txt-file


if [[ $? -eq 0 ]] ; then
    echo -e "
    1. Create a folder
    2. Copy a folder
    3. Set a password
    4. Calculator
    5. Create Week Folders
    6. Check Filenames
    7. Download a File
    8. Exit"

    echo 
    read -p "Please press corresponding number >" BeforeMessage

case "$BeforeMessage" in
"1")
echo
    bash ../Week2/FolderCreator.sh
    ;;
"2")
echo
    bash ../Week2/FolderCopier.sh
    ;;
"3")
echo
    bash ../Week2/SetPassword.sh
    ;;
"4")
echo
    bash ../Week3/Placeholder_File.sh
    ;;
"5")
echo
    bash ../Week3/Placeholder_File.sh
    ;;
"6")
echo
    bash ../Week3/Placeholder_File.sh
;;
"7")
    bash ../Week3/Placeholder_File.sh
;;
"8")
    echo -e "\nSorry to see you go? Whatever, I don't need you anyway..."
    exit
    ;;
*)
    echo "Please enter in a number from 1-8."
    ;;
esac


else
    echo "Goodbye"
    exit 1

fi


exit 0