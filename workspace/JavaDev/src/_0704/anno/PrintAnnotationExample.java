package _0704.anno;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class PrintAnnotationExample {

	public static void main(String[] args) {

		Method[] declareMethods = Service.class.getDeclaredMethods();
		System.out.println("Servise class의 Method 개수 : " + declareMethods.length);
		
//		Service service = new Service();
//		
//		service.method1();
//		service.method2();
//		service.method3();
		
		for(Method method : declareMethods) {
			//PrintAnnotation이 적용 되었는지 확인
			if(method.isAnnotationPresent(PrintAnnotation.class)) {
				
				System.out.println("[" + method.getName() + "]");

				PrintAnnotation printAnnotation = method.getAnnotation(PrintAnnotation.class);
				
				for(int i = 0; i < printAnnotation.number(); i++) {
					System.out.print(printAnnotation.value());
				} //end for
				
				System.out.println();
				
				try {
					method.invoke(new Service());
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} //end try-catch
			} //end if
		} //end for
		
	} //end main
} //end class
