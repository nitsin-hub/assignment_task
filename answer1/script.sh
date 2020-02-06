#!/bin/bash

# List all regular files (without extension)
time=$(date +%d-%m-%Y_%H:%M:%S)
echo "List of all regular files present in directory at" $time;
list=$(ls -pI "*.*" | grep -v /)
echo "$list"
echo

# convert '.xlsx' files into '.csv' and add current date with name of files (only for .csv files)
for x in *.xlsx;
 do
   mv -f "$x" "${x%.xlsx}$(date +'%Y-%m-%d').csv" 2> /dev/null;
 done


