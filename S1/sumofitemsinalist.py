numbers = input("Enter a list of numbers seperated by spaces: ")
numbers_list = list(map(int, numbers.split()))
total_sum = sum(numbers_list)
print("Sum of all items in the list: ", total_sum)

