#!/bin/bash


echo "Top 20 files modified in last 10 days"

#Print top 20 files modified in last 10 days
list=$(find  -type f -mtime -10 -print0 | xargs -0 ls -tc | head -n 5)
for fn in  $list
do
 echo $fn
 modtime=$(stat -c "%x" $fn)
 drname=$(date +%d-%m-%Y -d "$modtime")

#Create new Directory based on modification date on files
 if [ ! -d "$drname" ]; then
    mkdir $drname; 
 fi
#Move files to respective Directoies accordind to their modification date 
  mv -f "$fn" "$drname" 2> /dev/null
done


