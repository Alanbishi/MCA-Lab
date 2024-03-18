echo "Please enter the first number."
read a 
echo "Please enter the second number."
read b
s=$(($a + $b))
average=$(($s/2))
echo "The average is=" $average
