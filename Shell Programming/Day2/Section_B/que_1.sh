#/bin/bash/

echo "Enter two numbers: "
read x
read y
echo "entered numbers are $x and $y"


sum=` expr $x + $y `
product=`expr $x \* $y` 
echo -e "\nSum is sum=$sum \n Product is $product"

echo "Enter two numbers: "
read a
read b
echo "entered numbers are $a and $b"
let sum=a+b
let product=a*b
echo $sum
echo $product


echo "Enter two numbers: "
read p
read q
echo "entered numbers are $p and $q"
#echo "`bc`"
#echo "`scale=2`"
sum=$(echo "$p+$q"| bc)
product=$(echo "$p*$q"| bc)
echo -e "\n Using BC Sum is $sum \n "Product is $product""
