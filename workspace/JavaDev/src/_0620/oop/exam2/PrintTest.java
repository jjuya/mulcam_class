package _0620.oop.exam2;

public class PrintTest {
	public static void main(String[] args) {

		Point2D p2d = new Point2D();

		p2d.setX(100);
		p2d.setY(100);

		p2d.print();
		
		System.out.println();

		Point3D p3d = new Point3D();

		p3d.setX(200);
		p3d.setY(200);
		p3d.setZ(200);

		p3d.print();

	} //end main
} //end class
