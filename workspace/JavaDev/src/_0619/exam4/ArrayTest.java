package _0619.exam4;


public class ArrayTest {
	public static void main(String[] args) {
		
		int[] score1 = new int[3];
		
		
		score1[0] = 100;
		score1[1] = 90;
		score1[2] = 70;
		
		//int[] score1 = {100, 90, 70};
		
		System.out.println(score1[0]);
		System.out.println(score1[2]);
		System.out.println(score1[2]);
		
		System.out.println();
		
		for(int i = 0; i < 3; i++) {
			System.out.println(score1[i]);
		} //end for
		
		System.out.println();
		
		for(int i = 0; i < score1.length; i++) {
			System.out.println(score1[i]);
		}
		
	} //end main
} //end class
