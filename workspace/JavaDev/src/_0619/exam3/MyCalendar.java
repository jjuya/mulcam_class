package _0619.exam3;

import java.util.*;

public class MyCalendar {
	public static void main(String[] args) {

		Calendar sDay = Calendar.getInstance();
		
		int year = 0;
		int month = 0;
		int startWeek = 0;
		int endDay = 0;

		Scanner sc = new Scanner(System.in);
		
		System.out.print("Input Year : ");
		year = sc.nextInt();
		System.out.print("Input month : ");
		month = sc.nextInt();
		
		
		sDay.set(year, month - 1, 1);
		startWeek = sDay.get(Calendar.DAY_OF_WEEK);
		
		endDay = sDay.getActualMaximum(Calendar.DATE);
		
		System.out.println(year + " 년 " + month + " 월 ");
		System.out.println("---------------------");
		System.out.println("일 월 화 수 목 금 토");
		System.out.println("---------------------");
		
		for(int d = 1; d < startWeek; d++) {
			System.out.print("   ");
		} //end for
		
		for(int i = 1, w = startWeek; i <= endDay; i++, w++) {
			if(i < 10) {
				System.out.print(" " + i + " ");
			}
			else {
				System.out.print(i + " ");
			} //end if : print date
			
			if((w % 7)== 0) {
				System.out.println();
			} //end if : print next line
			
		} //end for

	} //end main
} //end class
