package _0619.method;

public class MethodTest3 {
	public static void main(String[] args) {
		print("JJu"); //실매개변수
		print("Park");
		
		//공통적인 부분 모듈화 > method
	}

	private static void print(String name) { //형식매개변수
		System.out.println("*******************");
		System.out.println("* Hello, " + name + " *");
		System.out.println("*******************");
	}
}
