package basic.exam2;

import java.util.Scanner;

public class SwitchTest {
	public static void main(String[] args) {
		
//		int n = 3;
//		
//		switch (n) {
//		case 1: case 3:
//			System.out.println("Man");
//			break;
//			
//		case 2: case 4:
//			System.out.println("Waman");
//			break;
//		
//		default:
//			break;
//		} //end switch-case
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Input Grade(0 ~ 100) : ");
		int grade = sc.nextInt();
		
		switch (grade/10) {
		case 10: case 9:
			System.out.println("A");
			break;
			
		case 8:
			System.out.println("B");
			break;
			
		case 7:
			System.out.println("C");
			break;
			
		case 6:
			System.out.println("D");
			break;
			
		case 5: case 4: case 3: case 2: case 1: case 0:
			System.out.println("F");
			break;

		default:
			System.out.println("Error");
			break;
		}

	} //end main
} //end class
