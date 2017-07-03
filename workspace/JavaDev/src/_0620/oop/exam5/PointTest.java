package _0620.oop.exam5;

public class PointTest {
	public static void main(String[] args) {
		
		Point2D up = new Point3D();
		
		up.x = 100;
		up.y = 200;
		//up.z = 300;
		
		Point3D down = (Point3D)up;
		down.x = 100;
		down.y = 200;
		down.z = 300;
		
	} //end main
} //end class
