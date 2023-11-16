list_1 = raw_input("Enter the first list")
list_2 = raw_input("Enter the second list")
list_1 = [int(x) for x in list_1.split(",")]
list_2 = [int(x) for x in list_2.split(",")]
if len(list_1) == len(list_2):
	print("The two lists are of the same length.")
else: 
	print("Two lists are of not the same length.")
sum1 = sum(list_1)
sum2 = sum(list_2)
if sum1 == sum2:
	print("The two lists sums to the same value")
else:
	print("The two lists do not sums to the same value")
set1 = set(list_1)
set2 = set(list_2)
intersection = set1 & set2
if intersection:
	print("The two lists have atleast one value in common")
else:
	print("The two lists have no values in common")
