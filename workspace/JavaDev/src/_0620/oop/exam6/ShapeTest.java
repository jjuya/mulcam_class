package _0620.oop.exam6;

public class ShapeTest {
	public static void main(String[] args) {
		
		printArea(new Circle());
		
		printArea(new Rectangle());
		
		printArea(new Triangle());
		
	} //end main
	
	private static void printArea(Shape shape) {
		
		shape.area();
		
		if(shape instanceof Circle) {
			Circle c = (Circle) shape;
			System.out.println("반지름은 " + c.r);
		}
		else if(shape instanceof Rectangle) {
			Rectangle r = (Rectangle) shape;
			System.out.println("너비는 " + r.w + ", 높이는 " + r.h);
		}
		else if(shape instanceof Triangle) {
			Triangle t = (Triangle) shape;
			System.out.println("밑변은 " + t.w + ", 높이는 " + t.h);
		} // end if
		
		System.out.println("넓이는 " + shape.res);	
	} //end method : printArea(Shape shape)
	
} //end class
