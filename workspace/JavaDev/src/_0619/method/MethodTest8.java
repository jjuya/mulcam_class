package _0619.method;

public class MethodTest8 {
	public static void main(String[] args) {
		
		int a = 10;
		
		testFunction(a); //call by value
		
		System.out.println("main : " + a);
		
	} //end main
	
	private static void testFunction(int a) { 
		//실매개변수가 복제
		a++;
		System.out.println("testFunction : " + a);
		
	} //end method : testFunction
	
} //end class
