package _0620.oop.exam1;

public class PointTest {
	public static void main(String[] args) {
		
		Point2D pt = new Point2D();
		//new : 메모리에 실체를 만들어주는 명령
		//메모리에 인스턴스 생성
		//만든 개체를 참조하지 않으면 자동으로 소멸 > 인스턴스를 명명해줘야한다.
		
		pt.setX(100);
		pt.setY(200);
		
		System.out.println("x : " + pt.getX());
		System.out.println("y : " + pt.getY());
		
		pt.print();
		
		System.out.println();
		
		
		Point3D p = new Point3D();
		
		p.setX(100);
		p.setY(200);
		p.setZ(300);
		
		System.out.println("x : " + p.getX());
		System.out.println("y : " + p.getY());
		System.out.println("z : " + p.getZ());
		
		p.print();
		
	} //end main
} //end class
