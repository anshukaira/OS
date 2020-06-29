#! /bin/bash

# loop over files, but using shell function and giving user the option to select 

echo "Welcome to OS project"

echo "Here is the list of files present in the current directory"

general_list(){
    for file in *
    do 
        echo $file
    done
}

using_ls(){
    ls *
}

select option in General Cmd
do
    case $option in
    General )
        general_list
        break
        ;;
    Cmd )
        using_ls
        break
        ;;
    esac
done

echo -e "\n\n >_< Thank you"
