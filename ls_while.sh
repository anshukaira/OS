#! /bin/bash

# loop over files, but using a pipe (reading from standard input), and a while-loop

echo "Welcome to OS project"

echo "Here is the list of files present in the current directory"

ls * | while read f; do echo ${f}; done;
