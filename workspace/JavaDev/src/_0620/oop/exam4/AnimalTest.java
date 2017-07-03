package _0620.oop.exam4;

public class AnimalTest {
	public static void main(String[] args) {
		
		Animal animal = new Animal();
		System.out.println(animal);
		
		//sub type 인스턴스는 super type으로 참조 가능
		//자동형변환(묵시적형변환)
		Animal animalB = new Bird();
		System.out.println(animalB);
		
		Animal animalE = new Eagle();
		System.out.println(animalE);
		
//		//super type 인스턴스는 sub type으로 참조 불가능
//		Bird birdA = new Animal();
//		System.out.println(birdA);
//		
//		//실행시 error > RuntimeException
//		Bird birdA = (Bird)new Animal();
//		System.out.println(birdA);
//		
//		//실행시 error > RuntimeException
//		Bird birdA2 = (Bird)animal;
//		System.out.println(birdA2);
		
		Condor condor = new Condor();
		System.out.println(condor);
		
		//downcasting은 원 인스턴스의 타입이
		//캐스팅하려는 타입이거나 캐스팅타입의 서브타입이여야 함.
		Animal aCondor = new Condor();
		Condor condor2 = (Condor)aCondor;
		System.out.println(condor2);
		
		Animal aEagle = new Eagle();
		Bird bird = (Bird) aEagle;
		System.out.println(bird);
		Eagle eagle2 = (Eagle) bird;
		System.out.println(eagle2);
		Condor condor3 = (Condor) aEagle;
		System.out.println(condor3);
		
		//클래스간의 캐스팅은 상속관계에서만 사용 가능
		Tiger tiger = (Tiger) aEagle;
		System.out.println(tiger);
		
	} //end main
} //end class
