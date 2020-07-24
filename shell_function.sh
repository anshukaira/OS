#! /bin/bash

# loop over files, but using shell function and giving user the option to select 

clear

i=0
while sleep 1
do
	(( i++ ))
	tput sc
	col=$( tput cols )
	time=$( date | cut -d " " -f 5 )
	tput cup 0 $(( col - 26 ))
	echo " Current time   : $time"
	tput cup 1 $(( col - 26 ))
	echo " Execution time : $i secs  "
	tput rc
done &

process=$!


col=$( tput cols )
j="xxxxxxx"
while [ ${#j} -lt $col ]
do
	j="x$j"
done

echo $j
echo $j
echo $j
echo $j
echo $j

tput sc
tput cup 2 $(( (col/2) - 13 ))



echo "   WELCOME TO OS PROJECT   "

tput rc
echo ""
echo "Choose a method to list files in directory..."

using_loop(){

	echo -e "Here is the list of files in directory....\n"

	count=0
    
    for file in *
    do
    	(( count++ )) 
        echo $file
    done

    echo -e "\nTotal No of files : $count"
}

using_ls(){

	echo -e "Here is the list of files in directory....\n"

	ls -1
    
    echo -e "\nTotal No of files : $( ls | wc -l )"
}

PS3="Reading Input : "
PS1="OS Project : "
select option in Using_Loop Using_ls_Command
do
    case $option in
    Using_Loop )
        using_loop
        break
        ;;
    Using_ls_Command )
        using_ls
        break
        ;;
    esac
done

echo -e "\n\n >_< Thank you\n"


kill $process