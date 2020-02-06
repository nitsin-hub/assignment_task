#!/bin/bash

echo "Old filename        New filename           Last accessed time(IST)"

#Find all files owned  by user john which were accessed in last 3 days 
find $1 -user john -type f -atime -3 -print0 |\
while read -d $'\0' i;
do
#Convert uppercase to lowercase from file's name
    j=${i,,}
    mv "$i" "$j" &>/dev/null;
#Remove all whitespce from file's name
    k=${j// /}
    mv -v "$j" "$k" &>/dev/null;
    ATIME=$(TZ=IST stat -c "%x" $k);
#Print filenames before and after modifing with accessed time in IST format
    echo $i"        "$k"          "$ATIME
done

