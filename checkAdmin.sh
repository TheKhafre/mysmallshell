#!/bin/bash

# this script will check the user's inputed username to determine if the user is the root user or the system admin.

admin="khafre"

read -p "enter your username: " username

#the following code will check if the entered username is the admin

if [[ "${username}" == "${admin}" ]] || [[ $EUID == 0 ]] ;
then
	echo "welcome $username"
else
	echo "who the fuck are?"
fi
