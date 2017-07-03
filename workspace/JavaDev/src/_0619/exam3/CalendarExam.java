package _0619.exam3;

import java.util.*;

public class CalendarExam {
	public static void main(String[] args) {
		
		Calendar now = Calendar.getInstance();
		
		int year = now.get(Calendar.YEAR);
		int month = now.get(Calendar.MONTH) + 1;
		//month 데이터가 배열에 저장되어 있다. > 1월이 0번지에 저장
		int day = now.get(Calendar.DATE);
		int week = now.get(Calendar.DAY_OF_WEEK);
		
		System.out.println("년도 : " + year);
		System.out.println("월 : " + month);
		System.out.println("일 : " + day);
		System.out.println("몇번째 요일 : " + week);
		
		//날짜를 바꾸는 방법 1
//		now.set(2017, 5, 18);
//		
//		year = now.get(Calendar.YEAR);
//		month = now.get(Calendar.MONTH) + 1;
//		day = now.get(Calendar.DATE);
//		week = now.get(Calendar.DAY_OF_WEEK);
//		
//		System.out.println("년도 : " + year);
//		System.out.println("월 : " + month);
//		System.out.println("일 : " + day);
//		System.out.println("몇번째 요일 : " + week);
		
		//날짜를 바꾸는 방법 2
		now.add(Calendar.DATE, 1);
		
		year = now.get(Calendar.YEAR);
		month = now.get(Calendar.MONTH) + 1;
		day = now.get(Calendar.DATE);
		week = now.get(Calendar.DAY_OF_WEEK);
		
		System.out.println("년도 : " + year);
		System.out.println("월 : " + month);
		System.out.println("일 : " + day);
		System.out.println("몇번째 요일 : " + week);
		

	} //end main
} //end class
