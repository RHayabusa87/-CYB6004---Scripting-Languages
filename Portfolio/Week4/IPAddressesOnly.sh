#!/bin/bash

bash IPInfo.sh | sed -n '/IP Address/p'



#Two_IP_Addresses="$(ifconfig)"

#echo "$et_info" | sed '/inet' / s/inet/IP Address:/
#All_IP_Addresses=$(echo "$Two_IP_Addresses" | sed -n '/IP Address' / {
#'s/\n\t\tIP Address/
#p
#}')

#echo -e "The addresses of this computer are as follows:\n$All_IP_Addresses"s