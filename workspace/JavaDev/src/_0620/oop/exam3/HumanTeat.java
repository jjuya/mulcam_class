package _0620.oop.exam3;

public class HumanTeat {
	public static void main(String[] args) {
		
		Human h = new Human();
		
		h.setName("jju");
		h.setGender(2);
		h.setYear(1992);
		h.setJob("Student");
		h.setMarried(true);
		
		System.out.println(h);
		
		AnimalLover al = new AnimalLover();
		al.setName("JB");
		al.setGender(1);
		al.setYear(1991);
		al.setJob("AI 트레이딩 알고리즘 개발자");
		al.setMarried(true);
		al.setAnimalType("고양이");
		al.setAyear(2016);
		System.out.println(al);
		
	} //end main
} //end class
