import java.util.Scanner;

public class Main extends credexception{

	public static void main( String args[]){


		Scanner sc = new Scanner(System.in);

		System.out.println("Enter the username: ");
		String name = sc.next();
		System.out.println("Enter the password: ");
		String password = sc.next();

		try{

			if( name.equals("alan") && password.equals("mca")){
				System.out.println("Access granted");
			}else{
				throw new credexception("Invalid Credentials");
			}

		}catch(credexception e){

			System.out.println(e.getMessage());
		}

	}
}
