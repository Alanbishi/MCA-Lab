#!/bin/bash
echo -n “Enter a 7 digit number:- ”
read num
len=`echo $num | wc -c`
flag=1
while test $flag -le $len
do
echo $num | cut -c$flag
flag=`expr $flag + 2`
done
