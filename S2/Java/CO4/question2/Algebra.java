package Arithmetic;

interface Temp{
	
	void add();
	void sub();
	void div();
	void mul();
}

public class Algebra implements Temp{

	float num1;
	float num2;
	
	public Algebra(float a, float b){
		
		this.num1 = a;
		this.num2 = b;
	}

	public void add(){
		
		System.out.println("The Sum is: " + (this.num1+this.num2));
	}

	public void sub(){
		
		System.out.println("The Diference is: " + (this.num1-this.num2));
	}

	public void mul(){

		System.out.println("The Product is: " + (this.num1*this.num2));
	}

	public void div(){

		System.out.println("The Quotient is: " + (this.num1/this.num2));
	}
}
