class Rectangle:
	def __init__ (self,length,breadth):
		self.length=length
		self.breadth=breadth
	def area(self):
		return self.length * self.breadth
	def perimeter(self):
		return 2 * self.length * self.breadth
	def compare_area(self, other_rectangle):
		if self.area() > other_rectangle.area():
			return "The first rectangle has larger area."
		elif self.area() < other_rectangle.area():
			return "The second rectangle has larger area."
		else:
			return "Both rectangle has equal areas."
rectangle1 = Rectangle(4,6)
rectangle2 = Rectangle(6,8)
print("The area of first rectangle: ", rectangle1.area())
print("The perimeter of first rectangle: ",rectangle1.perimeter())
print("The area of second rectangle: ", rectangle2.area())
print("The perimeter of second rectangle: ", rectangle2.perimeter())
comparison_result = rectangle1.compare_area(rectangle2)
print("The result of comparison is: ",comparison_result)
