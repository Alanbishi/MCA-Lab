public class sortstring {
	public static void main(String []args){
        String temp;
        int i,j;
        String str[] = new String[5];
        str[0] = "Alan";
        str[1] = "Tomy";
        str[2] = "Zayn Malik";
        str[3] = "Babu Namboothiri";
        str[4] = "Gilbert";
         System.out.println("Strings before sorting:");
        for(i=0;i<5;i++)
         {
             System.out.println(str[i]);
         }
        
        for (i=0; i<5; i++)
          {
              for(j=i+1;j<5;j++)
                {
                    if((str[i].compareTo(str[j]))>0)
                      {
                          temp=str[i];
                          str[i]=str[j];
                          str[j]=temp;
                      }
                }
              
          }
        System.out.println("\nStrings after sorting:");
        for(i=0;i<5;i++)
         {
             System.out.println(str[i]);
         }
	}
}
