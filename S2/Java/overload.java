
import java.util.*;

public class overload {
	int a;
	int area;
	float x;
	double y;
	
	void area(int l,int b) {
		int length = l;
		int breadth = b;
		a=length*breadth;
		System.out.println("Area of the Rectangle: "+a);
	}
	
	void area(int s) {
		int side = s;
		area = side * side;
		System.out.println("Area of the Square: "+area);	
	}
	
	void area(float b, float h) {
		float base = b;
		float height =h;
		x = (base*height)/2;
		System.out.println("Area of the Triangle: "+x);			
	}
	
	void area(double r) {
	    double radius = r;
		y = 3.14*radius*radius;
		System.out.println("Area of the Circle: "+y);	
	}
	
	
public static void main(String[] args)	{
	overload obj = new overload();
	Scanner sc = new Scanner(System.in);
	System.out.println("--->>>Area of different shapes<<<---");
	System.out.println("\n->->Rectangle");
	System.out.println("Enter the Dimensions:");
	System.out.println ("Enter the length:"); int l = sc.nextInt();
	System.out.println ("Enter the breadth:"); int b = sc.nextInt();
	obj.area(l,b);
	System.out.println("\n->->Square");
	System.out.println("Enter the Dimensions:");
	int s = sc.nextInt();
	obj.area(s);
	System.out.println("\n->->Triangle");
	System.out.println("Enter the Dimensions:");
	System.out.println("Enter the base: "); float base = sc.nextFloat();
	System.out.println("Enter the height: "); float h= sc.nextFloat();
	obj.area(base,h);
	System.out.println("\n->->Circle");
	System.out.println("Enter the radius:");
	double r = sc.nextDouble();
	obj.area(r);
	sc.close();
  }
	
}
