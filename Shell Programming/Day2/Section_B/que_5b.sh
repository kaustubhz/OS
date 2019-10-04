#/bin/bash/

echo -e "\nEnter three numbers: "
read x
read y
read z
avg=$(echo "scale=2;($x+$y+$z)/3"|bc)
echo "average is $avg"
