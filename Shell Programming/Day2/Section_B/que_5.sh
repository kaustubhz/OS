#/bin/bash/

echo "Enter three numbers: "
read x
read y
read z
if [ $x -gt $y ]
then
	if [ $x -gt $z ]
	then
		echo "$x is greatest number"
	else
		echo "$z is greatest number"
	fi
else
	if [ $y -gt $z ]
	then
		echo "$y is greatest number"
	else
		echo "$z is greatest number"
	fi
fi
