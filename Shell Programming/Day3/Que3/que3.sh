#/bin/bash

echo -e "\nEnter name: "
read str
echo "$res"
if [[ -f $str ]] 
then
	echo "$str is a file"
elif [[ -d $str ]]
then
	echo "$str is a directory"
else
	echo "$str is neither file nor directory"
fi
