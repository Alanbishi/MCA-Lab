import java.util.Scanner;
public class shapes{
	void area(int r1){
		double shape_area = 3.14*r1*r1;
		System.out.println("\n The area of Circle is " +r1+ "=" +shape_area);
}

	void area(int a1,int b1){
	int shape_area = a1*b1;
	System.out.println("\n The area of the rectangle with dimesions:" "length" +a1+ "and" "height" +b1+ "is =" +shape_area);
}
	void area(int h1, int g1){
	int shape_area = (h1*g1)/2;
	System.out.println("\n The area of the triangle with dimensions:" "height" +h1+ "and" "base" +g1+ "is =" +shape_area);
}

