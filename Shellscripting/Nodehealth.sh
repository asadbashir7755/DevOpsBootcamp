#!/bin/bash
set -e #exit sript when error occur
set -o #when pipe fail it will exit script 

echo "What u want to check ??? "
echo -e "1.System Storage\n2.System Memory\n3.System CPU'S\n4.Wanna check running processes?\n5.Show specific processes only ?\n6.Get process ID."
read choice
if [ "$choice" = "1" ]
then
        set -x
        df -h
        set +x

elif [ "$choice" = "2" ]
then
	set -x
        free -h
elif [ "$choice" = "3" ]
then 
	set -x
	nproc
elif [ "$choice" = "4" ]
then
	set -x
        ps -ef
elif [ "$choice" = "5" ]
then
	echo "Enter proccess name which u want to grep?"
	read processname
        set -x
        ps -ef | grep "$processname"

elif [ "$choice" = "6" ]
then
        echo "Enter proccess name which u want to get ID?"
        read processname
        set -x
        ps -ef | grep "$processname" | awk -F " " '{print $2,$8}'


else
        echo "Invalid Choice "

fi
