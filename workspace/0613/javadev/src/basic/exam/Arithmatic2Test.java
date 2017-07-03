package basic.exam;

import java.util.Scanner;

public class Arithmatic2Test {
	public static void main(String[] args) {
		int i;
		int j;
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Integer i : ");
		i = sc.nextInt();
		
		System.out.print("Integer j : ");
		j = sc.nextInt();
		
		System.out.println(i > j);
		System.out.println(i < j);
		System.out.println(i >= j);
		System.out.println(i >= j);
		System.out.println(i == j);
		System.out.println(i != j);
	}
}
