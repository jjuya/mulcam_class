package watson.controllers;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


@WebServlet("/Speaker")
public class Speaker extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	private static Logger logger = LoggerFactory.getLogger(Speaker.class);
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String statement = request.getParameter("statement");
		String voice = request.getParameter("voice");
		
		logger.info(statement);
		logger.info(voice);
	}
}
