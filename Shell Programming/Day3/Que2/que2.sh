#/bin/bash/

clear; loop=y
echo -e "\nEnter a string "
read str
echo "entered string is $str"
 
while [ "$loop" = y ]
do
echo -e "\n**********Menu**********"
echo -e "\n1.Find length of string"
echo -e "2.Copy string"
echo -e "3.Concat strings"
echo -e "4.Compare two strings"
echo -e "5.Reverse a string"
echo -e "6.Quit"

read x

case $x in
	1)echo "Length of given string is `expr length $str`";;
	2)copy_str=$str;
		echo "String Copied"
		echo "Original string: $str"
		echo "Copied string: $copy_str";;
	3)echo "Enter string to be concatenated: "
		read str1
		concat="${str} ${str1}"
		echo "Concatenated string is [ ${concat} ]";;
	4)  echo "Enter string2: "
		read str2
		if [ $str = $str2 ]
		then
			echo "Both strings are same"
		else
			echo "String1 and String2 are different"
		fi;;
	5)echo "$str" | rev;;
	6) loop=n;;	
esac
done

