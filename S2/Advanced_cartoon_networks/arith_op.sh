
echo "Enter a and b"
read a
read b
echo "Enter operation to be performed"
echo "1.Addition"
echo "2.Substraction"
echo "3.Division"
echo "4.Multiplication"
read op
case $op in
1) c=`expr $a + $b` ;;
2) c=`expr $a - $b` ;;
3) c=`expr $a / $b` ;;
4) c=`expr $a \* $b` ;;
*) echo "No valid operation was specified" ;;
esac
echo "Result after performing operation on a and b is: " $c
