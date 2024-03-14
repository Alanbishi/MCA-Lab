public class stringman {
	     public static void main(String []args){
	        String text = "Greater Manchester Police";
	        System.out.println("Original Text: "+text);
	        System.out.println("\nThe given text is empty->"+text.isEmpty());
	        System.out.println("\nLength of the given text: "+text.length());
			System.out.println("\nTo Upper Case: "+text.toUpperCase());
			System.out.println("\nTo Lower Case: "+text.toLowerCase());
			System.out.println("\nSubstring: "+ text.substring(7));
			System.out.println("\nSubsequence: "+ text.subSequence(7,15));
			System.out.println("\nIntern: "+ text.intern());
			System.out.println("\nReplace O with $: "+text.replace('O','$'));
			System.out.println("\nReplace all text with 'Cyber Cell': "+text.replaceAll(text, "Cyber Cell"));
			System.out.println("\nReplace first word: "+text.replaceFirst("Object","Java"));
			System.out.println("\nCharacter at index 8:  "+ text.charAt(8));
			int ascii = text.charAt(8);
			System.out.println("\nASCII value of character at index 8:  "+ascii);
			System.out.println("\nFirst Index of Character 'O': "+text.indexOf('O'));
			System.out.println("\nLast Index of Character 'O': "+text.lastIndexOf('O'));
			String text1 = "Cell";
			System.out.println("\nConcatenation with 'Cell': "+text.concat(" ").concat(text1));
			System.out.println("\n__Comparison__");
			System.out.println("\nIf the value is 0, both are equal. Otherwise unequal!");
		    System.out.println("\nText for Comparison:greater manchester police->"+ text.compareTo("greater manchester police"));
		    System.out.println("Text for Comparison:Greater Manchester Police->"+ text.compareTo("Greater Manchester Police"));
	     }
	}
