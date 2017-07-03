package _0621.oop.exam9;

public class Singleton {
	private static Singleton singleton = new Singleton();
	private Singleton(){}
	
	public static Singleton getInstance() {
		return singleton;
	}
	
	
	@Override
	public String toString() {
		return "포기하는 그 순간 시험종료다~!!!";
	}
}
