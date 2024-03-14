
import java.util.Scanner;

public class employee {
	
		
		int eNo, eSalary;
		
		String eName;
		
		public void edata() {
		
		Scanner in = new Scanner(System.in);
		
		System.out.println("Enter the employ number : ");
		
		eNo = in.nextInt();
		
		System.out.println("Enter the employ name : ");
		
		eName = in.next();
		
		System.out.println("Enter the employ salary  : ");
		
		eSalary = in.nextInt();
		
	
	}
		void data() {
			
		
			System.out.println("id number : "+eNo);
			
			System.out.println("Name : "+eName);
			
			System.out.println("Salary : "+eSalary);
		}

	public static void main(String[] args) {
		
		Scanner in = new Scanner(System.in);
		
		System.out.println("Enter the number of employees : ");
		
		int n = in.nextInt();
		
		employee a[] = new employee[n];
		
		
		System.out.println("-Enter the employee details-");
		
		for(int i = 0; i < n; i ++) {
			
			a[i] = new employee();
			
			a[i].edata();
			
			
		}
		
		System.out.println("----------INFORMATION-----------");
		System.out.println("Enter the id of the employee : ");
		
		int k = in.nextInt();
		
		
		for(int  i = 0 ; i < n ; i ++) {
			
			if (k == a[i].eNo){
				
				a[i].data();
			
			}
		}
		
		
		
	}

}
