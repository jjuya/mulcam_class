package basic.exam2;

public class ContinueTest {
	public static void main(String[] args) {

		int sum = 0;

		for(int i = 1; i <= 1000; i++) {
			if((i % 3) == 0) {
				sum +=3;
			} //end if
		} //end for
		
		System.out.println(sum);

		sum = 0;

		for(int i = 1; i <= 1000; i++) {
			if((i % 3) != 0) {
				continue;
			} //end if
			
			sum += i;
		} //end for
		
		System.out.println(sum);

	} //end main
} //end class
