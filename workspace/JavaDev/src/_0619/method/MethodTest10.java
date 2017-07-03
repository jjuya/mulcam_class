package _0619.method;

public class MethodTest10 {
	public static void main(String[] args) {
		
		int[] n = {23, 10, 70, 80, 60, 25};
		
		int max = maxNumber(n);
		int min = minNumber(n);
		
		System.out.println("Max Number : " + max);
		System.out.println("Min Number : " + min);
		
	} //end main

	private static int minNumber(int[] n) {
		
		int temp = n[0];
		
		for(int num : n) {
			if(temp > num) {
				temp = num;
			} //end if
		} //end for	
		
		return temp;
		
	} //end method : minNumber

	private static int maxNumber(int[] n) {
		
		int temp = n[0];
		
		for(int num : n) {
			if(temp < num) {
				temp = num;
			} //end if
		} //end for	
		
		return temp;
		
	} //end method : maxNumber
	
} //end class
