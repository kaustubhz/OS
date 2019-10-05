#/bin/bash

echo -e "\nWhat do want to search: "
read x

if [ -f $x ]
then
	echo "$x is a file"
elif [ -d $x ]
then
	echo "$x is directory"
else
	echo "No match"
fi
		
echo -e "\nTotal file(s) are `ls -l | grep -e '^-' -c`"
echo -e "\nTotal directory(s) are `ls -l | grep -e '^d' -c`"
