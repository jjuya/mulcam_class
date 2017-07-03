package _0619.method;

public class MethodTest2 {
	public static void main(String[] args) {
		int i = 10, j = 5;
		
		System.out.println(i + " + " + j + " = " + add(j, j));
		System.out.println(i + " - " + j + " = " + sub(j, j));
		System.out.println(i + " * " + j + " = " + mul(j, j));
		System.out.println(i + " / " + j + " = " + div(j, j) + "_" + mod(i, j));
		
		//공통적인 부분 모듈화 > method
	}

	private static int mod(int i, int j) {
		return i % j;
	}

	private static int div(int i, int j) {
		return i / j;
	}

	private static int mul(int i, int j) {
		return i * j;
	}

	private static int sub(int i, int j) {
		return i - j;
	}

	private static int add(int i, int j) {
		return i + j;
	}

}
