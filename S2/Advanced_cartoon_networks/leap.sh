echo "Please enter the Year."
read year
if (( $year % 4 == 0  ))
then
	echo "The year $year is a leap year."
elif (( $year % 400 == 0 )) 
then	
	echo "The year $year is a leap year."
elif (( $year % 100 == 0 ))
	echo "The year $year is a leap year."
else
then
	echo "The year $year is not a leap year."
fi

