is_prime(){
	number=$!
	if [ $number -lt 2 ]; then
		echo "$number is not a prime number"
	else
		for ((i=2; i*i<=$number; i++)); do
			if [ $((number % i)) -eq 0]; then
				echo "4number is nnnoot a prime number."
				return 
			fi
		done
		echo "$number is a prime number."
	fi
}
read -p "Enter a number: " input_number
is_prime $input_number
