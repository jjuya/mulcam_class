package _0620.oop.exam3;

public class Human {
	
	private String name;
	private int gender; 	 //주민번호 7번째 자리
	private int year;		 //출생년도
	private String job;		 //직장
	private boolean married; //미혼 : T, 기혼 : F
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public int getGender() {
		return gender;
	}
	
	public void setGender(int gender) {
		this.gender = gender;
	}
	
	public int getYear() {
		return year;
	}
	
	public void setYear(int year) {
		this.year = year;
	}
	
	public String getJob() {
		return job;
	}
	
	public void setJob(String job) {
		this.job = job;
	}
	
	public boolean isMarried() {
		return married;
	}
	
	public void setMarried(boolean married) {
		this.married = married;
	}

	@Override
	public String toString() {
		return name + " is " + whatGender() + ",\n"
				+ "Birth year is " + year + ",\n"
				+ "Job is " + job + ",\n"
				+ "Married is " + whatMarried();
	}

	private String whatMarried() {
		
		String m = null;
		
		if(married) {
			m = "Not Married";
		}
		else {
			m = "Married";
		}
		
		return m;
	}

	private String whatGender() {
		
		String g = null;
		
		if(gender == 1 || gender == 3) {
			g = "MAN";
		}
		else if(gender == 2 || gender == 4) {
			g = "WAMEN";
		}
		else {
			g = "Error";
		}
		
		return g;
	}

} //end class
