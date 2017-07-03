package _0623.exception;

import java.sql.*;
import java.sql.Connection;
import java.util.Scanner;

public class ExceptionTest03 {
	public static void main(String[] args) {
		
		Scanner sc = new Scanner(System.in);
		
		System.out.print("id : ");
		String user_id = sc.nextLine();
		
		System.out.print("pw : ");
		String user_pw = sc.nextLine();
		
		MemberVO userInfo = new MemberVO();
		userInfo.setUser_id(user_id);
		userInfo.setUser_pw(user_pw);
		
		try {
			userInfo = login(userInfo);
			System.out.println(userInfo.getUser_name() + " 님이 로그인 했습니다.");
		} catch (Exception e) {
			System.out.println(e.getMessage());
		} //end try-catch
		
	} //end main
	
	private static MemberVO login(MemberVO userInfo) throws Exception {
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT user_name");
		sql.append(" FROM t_mem");
		sql.append(" WHERE user_id = ?");
		sql.append("AND user_pw=?");
		//sql.append(" WHERE user_id = '" + userInfo.getUser_id() + "' AND user_pw='" + userInfo.getUser_pw() + "'");

		try {
			//oracle diver가 있는지 확인
			Class.forName("oracle.jdbc.OracleDriver");	
			
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "bigdata", "bigdata");
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, userInfo.getUser_id());
			pstmt.setString(2, userInfo.getUser_pw());
			rs = pstmt.executeQuery();
			
			//stmt = conn.createStatement();
			//rs = stmt.executeQuery(sql.toString());
			
			if(rs.next()) {
				userInfo.setUser_name(rs.getString("user_name"));
				
				return userInfo;
			} else {
				throw new LoginFailException("아이디 혹은 비밀번호가 잘못되었습니다.", userInfo);
			} //end if
			
		} finally {
			if(rs != null) try{rs.close();} catch (Exception e) {}
			if(pstmt != null) try{pstmt.close();} catch (Exception e) {}
			if(conn != null) try{conn.close();} catch (Exception e) {}
		} //end try-finally
		
		//db를 사용하지 않았을때 
//		if(userInfo.getUser_id().equals("multi") && 
//		   userInfo.getUser_pw().equals("fa585d89c851dd338a70dcf535aa2a92fee7836dd6aff1226583e88e0996293f16bc009c652826e0fc5c706695a03cddce372f139eff4d13959da6f1f5d3eabe")) {
//			userInfo.setUser_name("제이비");
//			return userInfo;
//		}
//		else {
//			throw new LoginFailException("아이디 혹은 비밀번호가 잘못되었습니다.", userInfo);
//		} //end if
		
	} //end method
	
} //end class
