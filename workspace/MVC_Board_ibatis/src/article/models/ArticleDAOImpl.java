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

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.ibatis.sqlmap.client.SqlMapClient;
import com.ibatis.sqlmap.engine.builder.xml.SqlMapClasspathEntityResolver;
import com.ibatis.sqlmap.engine.impl.SqlMapClientImpl;

import article.controllers.PageNation;
import ibatis.QueryHandler;

public class ArticleDAOImpl implements ArticleDAO {
	private static ArticleDAOImpl articleDAO = null;
	
	private String driver = null;
	private String url = null;
	private String username = null;
	private String password = null;
	
	private DataSource ds = null;
	
	private ArticleDAOImpl() {
		/*Properties pr = new Properties();
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
		}*/
		
		try {
			Context context = new InitialContext();
			Context envContext = (Context)context.lookup("java:/comp/env");
			
			ds = (DataSource)envContext.lookup("jdbc/mydbcp");
		}
		catch(Exception e) {}
	}
	private Connection getConnection() throws SQLException {
		//return DriverManager.getConnection(url, username, password);
		return ds.getConnection();
	}
	
	public static ArticleDAOImpl getInstance() {
		if (articleDAO == null) {
			articleDAO = new ArticleDAOImpl();
		}
		return articleDAO;
	}

	private void dbClose(PreparedStatement ps, Connection cn) {
		if (ps != null) try{ps.close();}catch(Exception e){}
		if (cn != null) try{cn.close();}catch(Exception e){}
	}
	
	private void dbClose(ResultSet rs, PreparedStatement ps, Connection cn) {
		if (rs != null) try{rs.close();} catch(Exception e){}
		if (ps != null) try{ps.close();} catch(Exception e){}
		if (cn != null) try{cn.close();} catch(Exception e){}
	}

	@Override
	public void insertArticle(ArticleVO articleVO) throws Exception {
		SqlMapClient sqlMap = QueryHandler.getInstance();
		sqlMap.insert("article.insertArticle", articleVO);
	}
	
	@Override
	public List<ArticleVO> getArticleList() throws Exception {
		Connection cn =null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<ArticleVO> list = new ArrayList<ArticleVO>();
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT no, title, name, regdate, viewcount");
		sql.append(" FROM   tb_article");
		sql.append(" ORDER  BY no DESC");

		try {
			cn = getConnection();
			ps = cn.prepareStatement(sql.toString());
			rs = ps.executeQuery();
			while(rs.next()) {
				ArticleVO articleVO = new ArticleVO();
				articleVO.setNo(rs.getLong("no"));
				articleVO.setTitle(rs.getString("title"));
				articleVO.setName(rs.getString("name"));
				articleVO.setRegdate(rs.getDate("regdate"));
				articleVO.setViewcount(rs.getInt("viewcount"));
				list.add(articleVO);
			}
		} finally {
			dbClose(rs, ps, cn);
		}
		return list;
	}
	
	@Override
	public List<ArticleVO> getArticleList(PageVO pageVO) throws Exception {
		Connection cn =null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		
		List<ArticleVO> list = new ArrayList<ArticleVO>();
		StringBuffer sql = new StringBuffer();
		sql.append(" SELECT B.*");
		sql.append(" FROM (SELECT rownum AS rnum, A.*");
		sql.append("       FROM (SELECT no, title, name, regdate, viewcount");
		sql.append("             FROM   tb_article");
		sql.append("             ORDER  BY no DESC) A) B");
		sql.append(" WHERE rnum between ? and ?");

		try {
			cn = getConnection();
			ps = cn.prepareStatement(sql.toString());
			ps.setLong(1, pageVO.getStartnum());
			ps.setLong(2, pageVO.getEndnum());
			rs = ps.executeQuery();
			while(rs.next()) {
				ArticleVO articleVO = new ArticleVO();
				articleVO.setNo(rs.getLong("no"));
				articleVO.setTitle(rs.getString("title"));
				articleVO.setName(rs.getString("name"));
				articleVO.setRegdate(rs.getDate("regdate"));
				articleVO.setViewcount(rs.getInt("viewcount"));
				list.add(articleVO);
			}
		} finally {
			dbClose(rs, ps, cn);
		}
		return list;
	}
	
	@Override
	public List<ArticleVO> getArticleList(PageNation pageNation) throws Exception {
		SqlMapClient sqlMap = QueryHandler.getInstance();
		return sqlMap.queryForList("article.getArticleList", pageNation);
	}
	
	@Override
	public ArticleVO getDetail(long no) throws Exception {
		
		SqlMapClient sqlMap = QueryHandler.getInstance();
		return (ArticleVO) sqlMap.queryForObject("article.getDetail", no);
	}
	
	@Override
	public void updateViewcount(long no) throws Exception {
		SqlMapClient sqlMap = QueryHandler.getInstance();
		sqlMap.update("article.updateViewcount", no);
		
	}
	@Override
	public void updateArticle(ArticleVO articleVO) throws Exception {
		SqlMapClient sqlMap = QueryHandler.getInstance();
		
		if(sqlMap.update("article.updateArticle", articleVO) == 0) {
			throw new RuntimeException("비밀번호가 틀립니다.");
		}
	}
	
	@Override
	public void deleteArticle(ArticleVO articleVO) throws Exception {
		SqlMapClient sqlMap = QueryHandler.getInstance();
		
		if(sqlMap.delete("article.deleteArticle", articleVO) == 0) {
			throw new RuntimeException("비밀번호가 틀립니다.");
		}
	}
	@Override
	public long getTotalCount() throws Exception {
		
		SqlMapClient sqlMap = QueryHandler.getInstance();
		return (Long) sqlMap.queryForObject("article.getTotalCount");
	}
}
