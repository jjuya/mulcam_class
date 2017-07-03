package _0621.oop.exam9;
/*
 * Singleton 클래스 만드는 순서
 * 1. 생성자의 접근제어자를 private으로 만든다.
 * 	: 아무곳에서나 인스턴스 생성하는 것을 금지
 * 2. 자기 자신의 인스턴스를 참조하는 공유변수를 선언하고
 * 	  인스턴스를 생성 후 참조
 * 3. 공유변수를 리턴하는 getter 메소드 작성
 * 
 */

public class SingletonTest {
	public static void main(String[] args) {
		Singleton s1 = Singleton.getInstance();
		System.out.println(s1 + ":" + s1.hashCode());
		
		Singleton s2 = Singleton.getInstance();
		System.out.println(s2 + ":" + s2.hashCode());
		
		Singleton s3 = Singleton.getInstance();
		System.out.println(s3 + ":" + s3.hashCode());
		
	}
}
