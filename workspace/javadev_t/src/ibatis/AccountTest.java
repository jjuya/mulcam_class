package ibatis;

import java.sql.SQLException;
import java.util.Scanner;

import com.ibatis.sqlmap.client.SqlMapClient;

public class AccountTest {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		while(true) {
			try {
				int menu = showMenu(sc);
				
				switch (menu) {
				case 1:
					//System.out.println("고객 입력");
					insertAccount(sc);
					break;
				case 2:
					System.out.println("고객 리스트");
					break;
				case 0:
					System.out.println("프로그램을 종료합니다.");
					System.exit(1);
					break;
				default:
					System.out.println("없는 메뉴입니다.");
					break;
				}
			} catch (SQLException e) { 
				System.out.println(e.getMessage());
			} catch (Exception e) {
				System.out.println("잘못된 메뉴가 입력되었습니다.");
			}
		}
	}

	private static void insertAccount(Scanner sc) throws SQLException {
		AccountVO accountVO = new AccountVO();
		System.out.println("\n1. 고객 입력");
		System.out.print("firstName : ");
		accountVO.setFirstName(sc.nextLine());
		
		System.out.print("lastName : ");
		accountVO.setLastName(sc.nextLine());
		
		System.out.print("emailAddress : ");
		accountVO.setEmailAddress(sc.nextLine());
		SqlMapClient sqlMap = QueryHandler.getInstance();
		sqlMap.insert("insertAccount", accountVO);
	}

	private static int showMenu(Scanner sc) throws Exception {
		System.out.println();
		System.out.println("* * * menu  * *");
		System.out.println("1. 고객 입력   ");
		System.out.println("2. 고객 리스트 ");
		System.out.println("0. 종료        ");
		System.out.println("* * * * * * * *");
		System.out.print("> ");
		return Integer.parseInt(sc.nextLine().trim());
	}
}
