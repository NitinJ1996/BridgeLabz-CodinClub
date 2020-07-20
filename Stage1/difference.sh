#!/bin/bash -x

if [ ! -d $original $updated ]
then
	mkdir $original $updated
fi

cp $originalfile.sh $original
cp $updatedfile.sh $updated

diff -q $original $updated

cp $original $TerminalCommands/original-backup

diff -q $updated $original-backup
