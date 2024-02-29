public class cpu{

	double price;

	public class processor{

		int cores;
		String manufacturer;
		
		void info(int c, String m){
			cores = c;
			manufacturer = m;
		System.out.println("Processor details:");
		System.out.println("Manufacturer- " + m);
		System.out.println("No. of cores- " + c);
		}

	}

	static class ram{
		
		double memory;
		String manufacturer;

		void info( int mem, String m){
			memory = mem;
			manufacturer = m;

		System.out.println("Ram details:");
		System.out.println("Manufacturer- " + m);
		System.out.println("Storage capacity- " + mem + "GB");
 
		}

	}



public static void main( String args[]){

	cpu Cpu = new cpu();
	cpu.processor Processor = Cpu.new processor();
	cpu.ram Ram = new cpu.ram();
	Processor.info(4,"Intel_Duo");
	Ram.info(6,"RTX");
}


}
