#/bin/bash/

echo "Enter two numbers"
read x
read y

diff=$(echo "scale=4; $x / $y" | bc)
echo $diff
