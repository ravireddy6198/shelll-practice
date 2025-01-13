#!/bin/bash

SOURCE="/home/ravi/old-logs"

FILES_DELETE=$(find $SOURCE -name "*.log" -mtime +14)

echo "files to delete : $FILES_DELETE"

while read -r filepath
do

        echo " deleting file : $filepath"
        rm -rf $filepath


done <<< $FILES_DELETE

echo " all files deleted"