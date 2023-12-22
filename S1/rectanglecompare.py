class Rectangle:
	def __init__ (self, length, width):
		self.length = length
		self.width = width
		
	def area(self):
		return self.length * self.width
	def __lt__ (self, other):
		return self.area() < other.area()
rectangle1 = Rectangle(5, 10)
rectangle2 = Rectangle(8, 16)
if rectangle1 < rectangle2:
			print("Rectangle 2 has larger area than Rectangle 1.")
elif rectangle1 > rectangle2:
			print("Rectangle 1 has larger area than Rectangle 2.")
else:
			print("Both Rectangles have same area.")
