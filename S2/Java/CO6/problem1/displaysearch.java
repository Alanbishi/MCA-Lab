import java.io.File;

public class displaysearch{

	public static void main(String [] args){
		
		String dir_path = "/home/lab2/Documents";
		File dir = new File(dir_path);
		File[] files = dir.listFiles();
		if (files != null){
			for(File file : files){
				System.out.println(file.getName());
			}
		}

System.out.println("|_|_|_|_|_|_|_|_|__|");
String query = "thisfile.txt";
System.out.println("Query: " +query);

for(File file: files){
	if(file.getName().equals(query)){
	System.out.println("File: " +query+ " found");
	System.exit(0);
}
}

System.out.println("File Not Found");

}
}

