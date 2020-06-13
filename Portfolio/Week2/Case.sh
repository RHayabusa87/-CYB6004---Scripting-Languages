#!/bin/bash


Val_A="1. Create a folder"
Val_B="2. Copy a folder"
Val_C="3. Set a password"

Val_Type=read "-p

case $Val_Type in
    [1-9]) echo "You are quite young";;
    [5-9]) echo "Time fore elementary school";;
    1[0-9]) echo "Time fore middle school";;
    [2-9][0-9]) echo "You are an adult";;
    *) echo "Please selects a response from numbers 1-4."
esac