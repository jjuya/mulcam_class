package ibatis;

import java.sql.SQLException;
import java.util.List;
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
					insertAccount(sc);
					break;
				case 2:
					listAccount(sc);
					break;
				case 3:
					detailAccount(sc);
					break;
				case 4:
					updateAccount(sc);
					break;
				case 5:
					deleteAccount(sc);
					break;
				case 0:
					System.out.println("Exit");
					System.exit(1);
					break;
				default:
					System.out.println("Exception : Menu is not exit");
					break;
				}
				
			} catch (Exception e) {
				System.out.println("Exception : Input is Wrong");
			}
			
			
		}
		
	} //end main
	
	private static void deleteAccount(Scanner sc) throws SQLException {
		System.out.print("삭제 할 고객 id를 입력하세요 > ");
		int id = Integer.parseInt(sc.nextLine());
		
		SqlMapClient sqlMap = QueryHandler.getInstance();
		int result = sqlMap.delete("deleteAccount", id);
		if (result == 1) {
			System.out.println(id + "고객정보가 삭제되었습니다.");
		} else {
			System.out.println(id + "고객정보 삭제실패");
		}
	}

	private static void updateAccount(Scanner sc) {
		System.out.print("수정 할 고객 id를 입력하세요 > ");
		int id = Integer.parseInt(sc.nextLine());
		
		SqlMapClient sqlMap = QueryHandler.getInstance();
		try {
			AccountVO accountVO = (AccountVO) sqlMap.queryForObject("detailAccount", id);
			if (accountVO == null) {
				System.out.println("잘못된 고객 ID 입니다");
			} else {
				System.out.println(accountVO.getId() + "고객 정보 수정");
				System.out.println("old : " + accountVO.getFirstName());
				System.out.print("new : ");
				String firstName = sc.nextLine();

				System.out.println("old : " + accountVO.getLastName());
				System.out.print("new : ");
				String lastName = sc.nextLine();
				
				System.out.println("old : " + accountVO.getEmailAddress());
				System.out.print("new : ");
				String emailAddress = sc.nextLine();

				AccountVO up_accountVO = new AccountVO();
				up_accountVO.setId(id);
				up_accountVO.setFirstName(firstName);
				up_accountVO.setLastName(lastName);
				up_accountVO.setEmailAddress(emailAddress);
				
				int result = sqlMap.update("updateAccount", up_accountVO);
				if (result == 1) {
					System.out.println(id + "고객정보가 수정되었습니다.");
				} else {
					System.out.println(id + "고객정보 수정실패");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private static void detailAccount(Scanner sc) {
		System.out.print("상세보기 할 고객 id를 입력하세요 > ");
		int id = Integer.parseInt(sc.nextLine());
		
		SqlMapClient sqlMap = QueryHandler.getInstance();
		try {
			AccountVO accountVO = (AccountVO) sqlMap.queryForObject("detailAccount", id);
			if (accountVO == null) {
				System.out.println("잘못된 고객 ID 입니다");
			} else {
				System.out.println(id + "고객님의 상세정보입니다.");
				System.out.println(accountVO + "\n");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private static void listAccount(Scanner sc) throws SQLException {
		
		SqlMapClient sqlMap = QueryHandler.getInstance();
		//여러건일 경우 queryForList, 한건일 경우 queryObject		
		List<AccountVO> list = sqlMap.queryForList("listAccount");
		for(AccountVO accountVO : list) {
			System.out.println(accountVO);
			System.out.println("============================================");
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
		
		System.out.println(accountVO.getLastName() + "님이 입력되었습니다.");
	}

	private static int showMenu(Scanner sc) throws Exception {

		System.out.println("******** MENU ********");
		System.out.println("1. Insert Member");
		System.out.println("2. List Member");
		System.out.println("3. Detail Member");
		System.out.println("4.	Update Member");
		System.out.println("4.	Delete Member");
		System.out.println("0.	Exit");
		
		System.out.println("**********************");
		System.out.print(" > ");
		
		return Integer.parseInt(sc.nextLine().trim());	
	} //end showMenu
} //end class
