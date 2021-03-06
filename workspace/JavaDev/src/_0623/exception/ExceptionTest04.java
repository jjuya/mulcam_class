package _0623.exception;

import java.util.InputMismatchException;
import java.util.Scanner;

import org.apache.commons.codec.digest.DigestUtils;

public class ExceptionTest04 {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Input Number from 1 to 99 : ");
		
		
		try {
			int input = sc.nextInt();
			
			if(!((input >= 1) && (input <= 99))) {
				throw new InputMismatchException("Input number is Wrong");
			} //end if
			
			System.out.println("Input Number is : " + input);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		System.out.println(DigestUtils.sha512Hex("12345678"));
		
	} //end method
	
} //end class
