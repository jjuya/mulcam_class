package basic.exam2;

public class WhileTest {
	public static void main(String[] args) {
		
//		while(���ǽ�) {
//			
//		}
		
		int i = 1;
		
		while(i <= 10) {
			System.out.print((i*10) + " : ");
			System.out.println("Hi");
			
			i++;
		}
		
		System.out.println("End");
		
		int sum = 0;
		int j = 0;
		
		while(j <= 1000) {
			
			sum = j + sum;
			
			j = j + 3;
		}
		
		System.out.println(sum);
	} //end main
} //end class
