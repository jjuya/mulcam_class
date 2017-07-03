package basic.exam2;

public class ForTest3 {
	public static void main(String[] args) {

		for(int i = 1; i <= 5; i++) {
			for(int j = 1; j <= i; j++) {
				System.out.print("*");
			} //end inner-for

			System.out.println();
		} //end outer-for

		for(int i = 1; i <= 5; i++) {
			for(int j = 5; j >= i; j--) {
				System.out.print("*");
			} //end inner-for

			System.out.println();
		} //end outer-for
		
		for(int i = 1; i <= 5; i++) {
			for(int j = 1; j <= 5; j++) {

				if(i < j) {
					System.out.print(" ");
				} 
				else {
					System.out.print("*");
				}//end if

			} //end inner-for

			System.out.println();
		} //end outer-for
		
		for(int i = 1; i <= 9; i++) {
			for(int j = 2; j <= 9; j++) {
				System.out.print(j + " * "  + i + " = " + (i * j) + "\t");
			} //end inner for

			System.out.println();
		} //end outer for

		System.out.println();

	} //end main
} //end class
