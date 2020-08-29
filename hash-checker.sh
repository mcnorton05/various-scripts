#!/bin/bash

#This script hashes a file and compares to a known hash value to see if they are the same.

#get the file
echo "Please enter the file path"
read -r filepath

#get the known hash value
echo "Please enter the known SHA256 hash value"
read -r knownhash

#hash the file
filehash=$(shasum -a 256 "$filepath")

echo "$filehash"

#check to see if the hash values match
if [ "$filehash" == "$knownhash" ]; then
	echo "The integrity of this file is confirmed."
else
	echo "DANGER! The integrity of this file cannot be assured."
fi
