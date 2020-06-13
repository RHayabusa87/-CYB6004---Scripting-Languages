#!/bin/bash
#Shebang donotes are utilising BASH programming langauge
read -p "Type the name of your folder
" FolderName #Print the following text. Input of user is stored in the variable FolderName. New line in programming forces new line in Terminal.
mkdir "$FolderName" #Make directory using variable FolderName
read -sp 'UserPassword : ' Pass_var #-sp supresses input like an in-built function. Input stored in variable UserPassword
echo "UserPassword : ' $Pass_var" #Print the input to the terminal

#mkdir secret.txt

exit 0 #Exit loop. Stops repeating loops infinitely.


