#!/bin/bash
#set -x

echo qwerty | sha256sum | awk '{print $1}' > ./Secret.txt

echo "Please type a password." #Prompting user for a password

read -p 'UserPassword : ' Pass_Var #-sp supresses input like an in-built function. Input stored in variable UserPassword

#Password in Secret.txt is "qwerty" with a SHA256 alogithm hash
#echo $Pass_Var

#userinput=`echo $Pass_Var | sha256sum`
userInput=`echo $Pass_Var | sha256sum | awk '{print $1}'`

#SecretHashedPassword='Secret.txt'
SecretHashedPassword=`head -n1 ./Secret.txt`

#echo $userInput
#echo $SecretHashedPassword

if [[ $userInput == $SecretHashedPassword ]] ; then
    echo "Access Granted"
    exit 0

else
    echo "Access Denied"
    exit 1
    
fi

exit 0

fi

#if [ "$SecretHashedPassword" -eq "$Pass_Var" ]; then 
    #echo "Access Granted!"
    #exit 0
#else
   # echo "Access Denied!"
   #exit 1
#fi

# Indirect help obtained via Anne Kuuse's student blog post "2.4 - step 2. passwordCheck.sh - HELP!". Direct link: https://blackboard.ecu.edu.au/webapps/blogs-journals/execute/blogTopicList?course_id=_657537_1&navItem=group_blogs&group_id=_163675_1&type=blogs#entry_255033_1