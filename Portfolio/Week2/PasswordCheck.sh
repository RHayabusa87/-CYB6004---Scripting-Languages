#!/bin/bash
#set -x

echo qwerty | sha256sum | awk '{print $1}' > ./Secret.txt #"qwerty" is being hashed using SHA256 algorithm and stored externally in "Secret.txt" file.

echo "Please type a password." #Prompting user for a password

read -sp 'UserPassword : ' Pass_Var #-sp is an in-built function that supresses input. User's input stored in variable UserPassword

#Userinput=`echo $Pass_Var | sha256sum`
userInput=`echo $Pass_Var | sha256sum | awk '{print $1}'`

#SecretHashedPassword="Secret.txt"
SecretHashedPassword=`head -n1 ./Secret.txt`

#Use of conditionals. "IF" the input matches the password "QWERTY" then grant access and display message.
if [[ $userInput == $SecretHashedPassword ]] ; then
    echo "Access Granted"
    exit 0

else
    echo "Access Denied" #"Else", echo "Access Denied" if password's hash typed in does not match hash of qwerty hash.
    exit 1
    
fi

exit 0

fi

# Indirect help obtained via Anne Kuuse's student blog post "2.4 - step 2. passwordCheck.sh - HELP!". Direct link: https://blackboard.ecu.edu.au/webapps/blogs-journals/execute/blogTopicList?course_id=_657537_1&navItem=group_blogs&group_id=_163675_1&type=blogs#entry_255033_1