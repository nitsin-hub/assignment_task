#!/bin/bash

#Check if input file present on present directory or not, if present then reverse every character of filename excluding extension.
if [ -f "$1" ]
then
 echo "$1" | cut -f 1 -d '.' | rev
else
#Instruction to use this script in case of wrong input.
 echo
 echo "Error:  Please provide a valid filename which is present in this directory"
 echo
 echo "--------------------------------- Instructions to use this script --------------------------------------"
 echo "1. Place this script in desired directory."
 echo "2. Run the script from command line followed by the name of file as its argument(input), i.e. the command to run this script will look like, './script.sh sample_filename.pdf'"
 echo "3. The input filename provided for argument must be on same direcory where script is present."
 echo "4. The output result of this script will display on screen after excluding file's extension and reversing
every charecter." 
fi

