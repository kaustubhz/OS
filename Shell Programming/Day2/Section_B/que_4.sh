#/bin/bash

echo -e "\nEnter a number:"
read x

if [ $(($x % 2)) -eq 0 ]
then
	echo "$x is even";
else
	echo "$x is odd";
fi

