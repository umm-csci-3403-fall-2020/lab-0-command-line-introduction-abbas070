#!/usr/bin/env bash

#Constants

Archive=$1

base=$(basename -s .tgz "$Archive")

here=$(pwd)

#Creating a temporary directory

Temporary=$(mktemp -d)


#Main 

#Extracts the contents of the tar archive into the newly
#created scratch directory

tar -xzf "$Archive" -C "$Temporary"

#For returning your current working directory
#To capture the current directory 
 

#Move to temporary directory

cd "$Temporary" || exit

#Removes all the files from the scratch directory

grep "DELETE ME!" -Rl "$base" | xargs rm

#Creating a new archive

tar -zcf cleaned_"$Archive" "$base"

#Taking that archive to NEW directory

mv cleaned_"$Archive" "$here"

#Move to a different directory 

cd "$here" || exit

#Removing the scratch directory

rm -rf "$Temporary"
