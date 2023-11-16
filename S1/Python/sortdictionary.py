my_dict = {'one': 1, 'three': 3, 'five': 5, 'two': 2, 'four': 4}
sorted_dict_asc = dict(sorted(my_dict.items()))
print("Dictionary in Ascending Order BY Keys: ",sorted_dict_asc)
sorted_dict_desc = dict(sorted(my_dict.items(),reverse=True))
print("Dictionary in Descending Order BY Keys: ",sorted_dict_desc)
sorted_dict_asc_values = dict(sorted(my_dict.items(), key=lambda item: item[1]))
print("DIctionary in Ascending Order By Values: ",sorted_dict_asc_values)
sorted_dict_desc_values = dict(sorted(my_dict.items(), key=lambda item: item[1], reverse=True))
print("DIctionary in Descending Order By Values: ",sorted_dict_desc_values)

