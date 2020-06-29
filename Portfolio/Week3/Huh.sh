#!/bin/bash

bash password.sh

if [ $? -eq 0 ] ; then
	
	echo -e "\n1. Create a folder"
	echo -e "2. Copy a folder"
	echo -e "3. Set a password"

	read -p "\nPlease select a number" userInput

	case $userInput in
		1)
			read -p "What do you want to call your folder? " folderName
			mdkir $folderName
			;;
		2)
			read -p "What is the name of the folder you wish to copy? " folderName
			read -p "Where do you want to move this folder? " pathToNewFolder
			mv $folderName $pathToNewFolder
			;;
		3)
			read -p 

	esac
