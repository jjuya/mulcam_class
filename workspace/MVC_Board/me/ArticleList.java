package article.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import article.models.ArticleDAO;
import article.models.ArticleDAOImpl;
import article.models.ArticleVO;
import article.models.PageVO;

public class ArticleList extends AbstractController {
	private static Logger logger = Logger.getLogger(ArticleList.class);
	@Override
	public ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) {
		
		ArticleDAO articleDAO = ArticleDAOImpl.getInstance();
		
		long pg = 1;
		
		try {
			pg = Long.parseLong(request.getParameter("pg"));
		} catch (Exception e) { }		
		
		ModelAndView mav = new ModelAndView();	
		
		try {
			
			long totalcount = articleDAO.getTotalCount();
			
			PageVO pageVO = new PageVO(pg, totalcount);
			
			List<ArticleVO> list = articleDAO.getArticleList(pageVO);			
			mav.setViewName("/WEB-INF/views/article/list.jsp");
		
			mav.addObject("list", list);
			mav.addObject("pageVO", pageVO);
			mav.addObject("pg", pg);
			
		} catch (Exception e) {
			e.printStackTrace();
			
			mav.setViewName("/WEB-INF/views/result.jsp");
			mav.addObject("msg", "리스트 출력 에러 \n 관리자에게 문의하세요.");
			mav.addObject("url", "");
		}
		
		return mav;
	}

} //end class
