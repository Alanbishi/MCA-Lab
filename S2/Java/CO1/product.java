
	class prod{
	String pcode;
	String pname;
	int price;
	}
	class product {
		public static void main (String args[]){
		prod prod1 = new prod ();
		prod prod2 = new prod ();
		prod prod3 = new prod ();
		
			prod1.pcode = "MS071";
			prod1.pname = "Brezza";
			prod1.price = 950;
			
			prod2.pcode = "HI045";
			prod2.pname = "Creta";
			prod2.price = 1460;
			
			prod3.pcode = "KI023";
			prod3.pname = "Seltos";
			prod3.price = 2450;
			
			if (prod1.price > prod2.price && prod1.price > prod3.price)
				System.out.println("Highest price is " + prod1.price);
					else if (prod2.price > prod1.price && prod2.price > prod3.price)
						System.out.println("Highest price is " + prod2.price);
							else if(prod3.price > prod1.price && prod3.price > prod2.price)
								System.out.println("Highest price is " + prod3.price);
									else
										System.out.println("All price are same");
			}
			}
	
	
