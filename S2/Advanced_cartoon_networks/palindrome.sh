echo Enter the string
read s
echo $s>temp
rvs="$(rev temp)"
echo "The reversed string is:"$rvs
if [ $s = $rvs ]
then
echo "It is palindrome"
else
echo "It is not a Palindrome"
fi
