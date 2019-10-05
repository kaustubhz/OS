#/bin/bash/

echo "Enter a year: "
read x

if [ $(($x % 4)) -eq 0 ]
then
	echo "$x is a leap year"
else
	echo "$x is not a leap year"
fi

