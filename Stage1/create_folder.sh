#!/bin/bash

folder_name="$1"
if [ ! -d $folder_name ]
then
	echo "Creating Folder"
	mkdir $folder_name
fi

