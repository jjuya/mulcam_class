package article.models;

import java.util.List;

import article.controllers.PageNation;

public interface ArticleDAO {
	
	ArticleVO getDetail(long no) throws Exception;
	void insertArticle(ArticleVO articleVO) throws Exception;
	void updateViewcount(long no) throws Exception;
	void updateArticle(ArticleVO articleVO) throws Exception;
	void deleteArticle(ArticleVO articleVO) throws Exception;

	long getTotalCount() throws Exception;
	List<ArticleVO> getArticleList() throws Exception;
	List<ArticleVO> getArticleList(PageVO pageVO) throws Exception;
	List<ArticleVO> getArticleList(PageNation pageNation) throws Exception;
}
