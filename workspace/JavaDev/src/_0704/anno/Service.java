package _0704.anno;

public class Service {
	
	@PrintAnnotation
	public void method1() {
		System.out.println("Test 1");
	}
	
	@PrintAnnotation("*")
	public void method2() {
		System.out.println("Test 2");
	}

	@PrintAnnotation(value="#", number=20)
	public void method3() {
		System.out.println("Test 3");
	}


}
