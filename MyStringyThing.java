// Thunyathorn Vararaksapong 5631258721
// Sivakorn Potisuntorn 56313404721
// Maneerat Wongjaroenporn 5631309021

public class MyStringyThing {
	
	public static String process(String input) {
		
		String eiei = input.toLowerCase().replaceAll(",|[a]","");
		String result = "";
		String[] words = eiei.split("\\s");
		
		for(int i=0; i<words.length; i++) {
			result = result + words[i].substring(0, 1).toUpperCase() + words[i].substring(1);
			if(i != words.length -1)
				result += " ";
		}
		
		return result;
		
	}
	
	public static void main(String[] args) {
		
		System.out.println(process(args[0]));
		
	}
	
}
