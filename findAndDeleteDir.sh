#!/bin/sh
#Finds the directory given as user input. Looks for it and asks for user's confirmation before deleting it.
echo "Enter directory name to find and delete:"
read fileName
echo "Looking for $fileName ..."
yes=y
for i in `find . -name $fileName -type d`
do 
  echo "\n\nFOUND: Directory present at: " $i
  echo "Proceed to delete(y/n):"
  read deleteFileConfirmation
  if [ $deleteFileConfirmation = $yes ];
  then 
     echo "Deleting $i"...
     rm -rf $i
     echo "DELETED: $i"
  else
    echo "Not deleting $i"
  fi 
done
