package article.models;

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

public class ArticleDAOImpl implements ArticleDAO {

	//Singleton class

	private static ArticleDAOImpl articleDAO = null;

	private String driver = null;
	private String url = null;
	private String username = null;
	private String password = null;

	//기본 생성자 : DB 정보 설정
	private ArticleDAOImpl() {
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
	}

	//연결 설정
	private Connection getConnection() throws SQLException {
		return DriverManager.getConnection(url, username, password);
	}

	//ArticleDAOImpl 인스턴스 생성
	public static ArticleDAOImpl getInstance() {
		if (articleDAO == null) {
			articleDAO = new ArticleDAOImpl();
		}
		return articleDAO;
	}

	//연결 해제
	private void dbClose(PreparedStatement ps, Connection cn) {
		if (ps != null) try{ps.close();}catch(Exception e){}
		if (cn != null) try{cn.close();}catch(Exception e){}
	}

	private void dbClose(ResultSet rs, PreparedStatement ps, Connection cn) {
		if (rs != null) try{rs.close();} catch(Exception e){}
		if (ps != null) try{ps.close();} catch(Exception e){}
		if (cn != null) try{cn.close();} catch(Exception e){}
	}

	//DB insert
	@Override
	public void insertArticle(ArticleVO articleVO) throws Exception {

		Connection cn = null;
		PreparedStatement ps = null;

		StringBuffer sql = new StringBuffer();
		sql.append(" INSERT INTO tb_article(no, title, name, pwd, content)");
		sql.append(" VALUES(seq_article.nextval, ?, ?, ?, ?)");

		try {
			cn = getConnection();
			ps = cn.prepareStatement(sql.toString());

			ps.setString(1, articleVO.getTitle());
			ps.setString(2, articleVO.getName());
			ps.setString(3, articleVO.getPwd());
			ps.setString(4, articleVO.getContent());

			ps.executeUpdate();

		} finally {
			dbClose(ps, cn);
		}
	}

	//DB select list
	@Override
	public List<ArticleVO> getArticleList() throws Exception {

		List<ArticleVO> list = new ArrayList<ArticleVO>();

		Connection cn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT no, title, name, regdate, viewcount");
		sql.append(" FROM tb_article");
		sql.append(" ORDER BY no desc");

		try {
			cn = getConnection();
			ps = cn.prepareStatement(sql.toString());
			rs = ps.executeQuery();

			while(rs.next()) {
				ArticleVO articleVO = new ArticleVO();
				articleVO.setNo(rs.getLong("no"));
				articleVO.setName(rs.getString("name"));
				articleVO.setTitle(rs.getString("title"));
				articleVO.setRegdate(rs.getDate("regdate"));
				articleVO.setViewcount(rs.getInt("viewcount"));
				list.add(articleVO);
			} //end while
		} finally {
			dbClose(rs, ps, cn);
		}

		return list;
	}
	
	//DB select list : paging
	@Override
	public List<ArticleVO> getArticleList(PageVO pageVO) throws Exception {
		Connection cn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<ArticleVO> list = new ArrayList<ArticleVO>();
		
		StringBuffer sql = new StringBuffer();
		sql.append(" select B.*");
		sql.append(" from (select rownum AS rnum, A.*");
		sql.append("       from (select no, title, name, regdate, viewcount");
		sql.append("             from   tb_article");
		sql.append("             order  by no desc) A) B");
		sql.append(" where  rnum between ? and ?");
		
		try {
			cn = getConnection();
			
			ps = cn.prepareStatement(sql.toString());
			ps.setLong(1, pageVO.getStartNum());
			ps.setLong(2, pageVO.getEndNum());
			rs = ps.executeQuery();
			while(rs.next()) {
				ArticleVO articleVO = new ArticleVO ();
				articleVO.setNo(rs.getLong("no"));
				articleVO.setName(rs.getString("name"));
				articleVO.setTitle(rs.getString("title"));
				articleVO.setRegdate(rs.getDate("regdate"));
				articleVO.setViewcount(rs.getInt("viewcount"));
				list.add(articleVO);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose(rs, ps, cn);
		}
		return list;
	}

	//DB select content
	@Override
	public ArticleVO getDetail(long no) throws Exception {

		ArticleVO articleVO;

		Connection cn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT no, title, name, content, regdate, viewcount");
		sql.append(" FROM tb_article");
		sql.append(" WHERE no = ?");

		try {
			cn = getConnection();
			ps = cn.prepareStatement(sql.toString());
			ps.setLong(1, no);
			rs = ps.executeQuery();

			if(rs.next()) {
				articleVO = new ArticleVO();
				articleVO.setNo(rs.getLong("no"));
				articleVO.setName(rs.getString("name"));
				articleVO.setTitle(rs.getString("title"));
				articleVO.setContent(rs.getString("content"));
				articleVO.setRegdate(rs.getDate("regdate"));
				articleVO.setViewcount(rs.getInt("viewcount"));
			} else {
				throw new RuntimeException("잘못된 접근이거나 해당 게시물이 삭제되었습니다.");
			}

		} finally {
			dbClose(rs, ps, cn);
		}

		return articleVO;
	}

	//조회수 증가
	@Override
	public void updateViewcount(long no) throws Exception {

		Connection cn = null;
		PreparedStatement ps = null;

		StringBuffer sql = new StringBuffer();
		sql.append(" UPDATE tb_article SET");
		sql.append(" 	viewcount = viewcount + 1");
		sql.append(" WHERE no = ?");

		try {
			cn = getConnection();
			ps = cn.prepareStatement(sql.toString());

			ps.setLong(1, no);;

			if(ps.executeUpdate() == 0) {
				throw new RuntimeException(no + "번 게시물이 존재하지 않습니다.");
			}			

		} finally {
			dbClose(ps, cn);
		}
	}

	//update Article
	@Override
	public void updateArticle(ArticleVO articleVO) throws Exception {

		Connection cn = null;
		PreparedStatement ps = null;

		StringBuffer sql = new StringBuffer();
		sql.append(" UPDATE tb_article SET");
		sql.append("        title=?, name=?, content=?");
		sql.append(" WHERE  no=? AND pwd=?");

		try {
			cn = getConnection();
			ps = cn.prepareStatement(sql.toString());

			ps.setString(1, articleVO.getTitle());
			ps.setString(2, articleVO.getName());
			ps.setString(3, articleVO.getContent());
			ps.setLong(4, articleVO.getNo());
			ps.setString(5, articleVO.getPwd());

			if (ps.executeUpdate() == 0) {
				throw new RuntimeException("비밀번호가 틀렸습니다.");
			}

		} finally {
			dbClose(ps, cn);
		}
	}

	//delete Article
	@Override
	public void deleteArticle(ArticleVO articleVO) throws Exception {
		
		Connection cn = null;
		PreparedStatement ps = null;

		StringBuffer sql = new StringBuffer();
		sql.append(" DELETE FROM tb_article");
		sql.append(" WHERE  no=? AND pwd=?");

		try {
			cn = getConnection();
			ps = cn.prepareStatement(sql.toString());
			
			ps.setLong(1, articleVO.getNo());
			ps.setString(2, articleVO.getPwd());

			if (ps.executeUpdate() == 0) {
				throw new RuntimeException("비밀번호가 틀렸습니다.");
			}

		} finally {
			dbClose(ps, cn);
		}
	}
	
	//전체 게시물수 가져오기
	@Override
	public long getTotalCount() throws Exception {
		Connection cn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		String sql_totalcount = "SELECT count(*) as cnt FROM tb_article";
		long result = 0;
		
		try {
			cn = getConnection();
			
			ps = cn.prepareStatement(sql_totalcount);
			rs = ps.executeQuery();
			
			if (rs.next()) {
				result = rs.getLong("cnt");
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			dbClose(rs, ps, cn);
		}
		return result;
	}


} //end class
