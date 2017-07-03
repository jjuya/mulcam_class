package basic.exam;

public class PrimitiveTest {

	public static void main(String[] args) {
		
		//*
		boolean b = true; // 사용은 1bit 하지만 1byte 할당
		// true or false를 나타내는 1비트(1바이트 할당)
		System.out.println("b = " + b);
		//*/
		
		//*
		byte b2 = 127;
		// -128~127, 1byte
		System.out.println("b2 = " + b2);
		//*/
		
		//*
		int i = 2147483647;
		// -2147483648 ~ 2147483647
		// 4byte
		System.out.println("i = " + i);
		//*/
		
		//*
		short s = 32767;
		// -32768 ~ 32767
		System.out.println("s = " + s);
		//*/
		
		//*
		long l1 = 2147483648L;
		// long l1 = 2147483648; -- 에러
		// -900경 ~ 900경
		System.out.println("l1 = " + l1);
		//*/
		
		//*
		char c = '가'; // char은 ''사용
		// 2byte 지원 > 유니코드를 지원하기 위해
		System.out.println("c = " + c);
		//*/
		
		//*
		double d = 3.1415926535;
		// 8byte
		System.out.println("d = " + d);
		//*/
		
		//*
		float f = 3.1415926535f;
		// 4byte
		// float f = 3.1415926535; -- 에러
		System.out.println("f = " + f);
		//*/
		
		// escape sequence
		System.out.println("가 \t 나 \t 다");
		System.out.print("안녕\n하세요");
		System.out.println("하이\\하이");
		
		System.out.print("a");
	}

}
