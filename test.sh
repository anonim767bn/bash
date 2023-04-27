#!/bin/bash
file=test1.txt
text="krivoyface"
./maker.sh $file $text

if [[ ! -f $file ]]
then
	echo "file is not find, test failed!!!!"
	exit 1
else
	
	if [[ "$(cat "$file")" == "$text" ]]
	then
		rm $file
		echo "test succesful!!!"
		exit 0
	else
		echo "содержимое файла не сопадает!!!!"
		rm $file
		exit 1
	fi
fi 
