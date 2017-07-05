package board.model;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;


public class BoardDAO {
	
	private static BoardDAO boardDAO = null;
	
	private Connection cn = null;
	private PreparedStatement ps = null;
	private ResultSet rs = null;	
	
	private String driver = null;
	private String url = null;
	private String username = null;
	private String password = null;
	
	private BoardDAO() { 
		
		Properties pr = new Properties();
		
		String props =
			this.getClass().getResource("").getPath() + "/database.properties";
		try {
			pr.load(new FileInputStream(props));
			
			driver = pr.getProperty("driver");
			url = pr.getProperty("url");
			username = pr.getProperty("username");
			password = pr.getProperty("password");
			
			Class.forName(driver);
		} catch (ClassNotFoundException | IOException e) {
			e.printStackTrace();
		}
	} //end constructor : BoardDAO
	
	private Connection getConnection() throws SQLException {
		return DriverManager.getConnection(url, username, password);
	} //end getConnection()
	
	public static BoardDAO getInstance() {
		
		if(boardDAO == null) {
			boardDAO = new BoardDAO();
		}
		
		return boardDAO;
	} //end getInstance()
	
	public List<BoardVO> getBoardList(long startnum, long endnum) {

		List<BoardVO> result = new ArrayList<BoardVO>();
		
		StringBuffer sql = new StringBuffer();
		sql.append(" select B.*");
		sql.append(" from (select rownum AS rnum, A.*");
		sql.append("       from (select no, title, name, regdate, viewcount");
		sql.append("             from   tb_board");
		sql.append("             order  by no desc) A) B");
		sql.append(" where  rnum between ? and ?");
		
		try {
				
			cn = getConnection();

			ps = cn.prepareStatement(sql.toString());
			ps.setLong(1, startnum);
			ps.setLong(2, endnum);
			rs = ps.executeQuery();
			
			while(rs.next()) {
				BoardVO boardVO = new BoardVO();
				boardVO.setNo(rs.getLong("no"));
				boardVO.setName(rs.getString("name"));
				boardVO.setTitle(rs.getString("title"));
				boardVO.setRegdate(rs.getDate("regdate"));
				boardVO.setViewcount(rs.getInt("viewcount"));
				
				result.add(boardVO);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose(rs, ps, cn);
		} //end try-catch-finally
		
		return result;
	} //end getBoardList()

	public long getTotalCount() {
		
		long result = 0;
		
		String sql_totalCount = "SELECT count(*) as cnt FROM tb_board";
				
		try {
			cn = getConnection();
			
			ps = cn.prepareStatement(sql_totalCount);
			rs = ps.executeQuery();
			
			if(rs.next()) {
				result = rs.getLong("cnt");
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose(rs, ps, cn);
		} //end try-catch-finally
		
		return result;
	} //end getTotalCount()
	
	public BoardVO getBoard(long no) {
		
		BoardVO result = null;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" select no, name, title, regdate, viewcount, content");
		sql.append(" from   tb_board");
		sql.append(" where  no=?");
		
		try {
			
			cn = getConnection();
			ps = cn.prepareStatement(sql.toString());
			ps.setLong(1, no);
			
			rs = ps.executeQuery();
			
			if (rs.next()) {
				result = new BoardVO();
				
				result.setNo(rs.getLong("no"));
				result.setName(rs.getString("name"));
				result.setTitle(rs.getString("title"));
				result.setContent(rs.getString("content"));
				result.setViewcount(rs.getInt("viewcount"));
				result.setRegdate(rs.getDate("regdate"));
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose(rs, ps, cn);
		} //end try-catch-finally
		
		return result;
	} //end getBoard()
	
	public boolean insertBoard(BoardVO boardVO) {
		
		boolean result = false;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO tb_board(no, title, name, content, pwd)");
		sql.append(" VALUES(seq_board.nextval, ?, ?, ?, ?)");
		
		try {
			cn = getConnection();
			ps = cn.prepareStatement(sql.toString());
			ps.setString(1, boardVO.getTitle());
			ps.setString(2, boardVO.getName());
			ps.setString(3, boardVO.getContent());
			ps.setString(4, boardVO.getPwd());
			ps.executeUpdate();
			result = true;
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose(ps, cn);
		} //end try-catch-finally
		
		return result;
	} //end insertBoard()
	
	public boolean updateBoard(BoardVO boardVO) {
		
		boolean result = false;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" UPDATE tb_board SET");
		sql.append("		title=?, name=?, content=?");
		sql.append(" where no=? AND pwd=?");
		
		try {
			
			cn = getConnection();
			
			ps = cn.prepareStatement(sql.toString());
			ps.setString(1, boardVO.getTitle());
			ps.setString(2, boardVO.getName());
			ps.setString(3, boardVO.getContent());
			ps.setLong(4, boardVO.getNo());
			ps.setString(5, boardVO.getPwd());
			
			if(ps.executeUpdate() > 0) {
				result = true;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose(ps, cn);
		} //end try-catch-finally
		
		return result;
	} //end updateBoard()
	
	public boolean deleteBoard(BoardVO boardVO) {		
		boolean result = false;
		
		StringBuffer sql = new StringBuffer();
		sql.append(" DELETE FROM tb_board");
		sql.append(" WHERE no=? AND pwd=?");
		
		try {
			cn = getConnection();
			
			ps = cn.prepareStatement(sql.toString());
			ps.setLong(1, boardVO.getNo());
			ps.setString(2, boardVO.getPwd());
			
			if(ps.executeUpdate() == 1) {
				result = true;
			}
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose(ps, cn);
		} //end try-catch-finally
		
		return result;
	} //end deleteBoard()
	
	
	
	private void dbClose(ResultSet rs2, PreparedStatement ps2, Connection cn2) {
		if (rs != null) try{rs.close();} catch(Exception e){}
		if (ps != null) try{ps.close();} catch(Exception e){}
		if (cn != null) try{cn.close();} catch(Exception e){}
	} //end dbClose()

	private void dbClose(PreparedStatement ps2, Connection cn2) {
		if (ps != null) try{ps.close();} catch(Exception e){}
		if (cn != null) try{cn.close();} catch(Exception e){}
	} //end dbClose()
	
} //end class


