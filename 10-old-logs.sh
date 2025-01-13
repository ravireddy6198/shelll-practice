#!/bin/bash

 #SOURCE="/home/ravi/old-logs"

# FILES_DELETE=$(find $SOURCE -name "*.log" -mtime +14)

# echo "files to delete : $FILES_DELETE"

# while read -r filepath
# do
#         echo " deleting file : $filepath"
#         rm -rf $filepath
# done <<< $FILES_DELETE

# echo " all files deleted"


 SOURCE="/home/ravi/old-logs"
 DEST="/home/ravi/old-logs/delete.log"
FILES_TO_DELETE=$(find $SOURCE -name "*.log" -mtime +14) &>>/home/ravi/old-logs/delete.log
echo "Files to be deleted: $FILES_TO_DELETE"

while read -r filepath # here filepath is the variable name, you can give any name
do
    echo "Deleting file: $filepath" 
    rm -rf $filepath
    echo "Deleted file: $filepath"
done <<< $DEST