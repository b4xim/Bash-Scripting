#!/bin/bash

while true; do
read -p "Enter Action: add,delete,show  " action
if [ $action == "add" ]; then
	read -p "enter username: " name
	sudo useradd $name
	if [ $? == 0 ]; then
		echo "User $name addedd successfully!"
	else
		echo "User already exists"
	fi
	break
elif [ $action == "delete" ]; then
	read -p "enter username: " name
	sudo userdel $name
	if [ $? == 0 ]; then
		echo "User $name deleted successfully!"
	else
		echo "User does not exist! Please use show action"
	fi
	break
elif [ $action == "show" ]; then
	grep home /etc/passwd
	break
else
	echo "please enter correct action: add, delete, show."
fi
done