package _0705.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sun.org.apache.regexp.internal.recompile;

@WebServlet("/Main")
public class Main extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	private void doProcess(HttpServletRequest request, HttpServletResponse response, String view) throws ServletException, IOException {
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher(view);
		dispatcher.forward(request, response);
	} //end doProcess
	
	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		String user_name = (String) session.getAttribute("user_name");  
		String user_id = (String) session.getAttribute("user_id");
		
		if(user_id != null && user_name != null) {
			request.setAttribute("msg", user_name + "(" + user_id + ")님이 로그인 하셨습니다.");
			
			doProcess(request, response, "/WEB-INF/views/_0705/main.jsp");
		} else {
			request.setAttribute("msg", "먼저 로그인 하세요.");
			request.setAttribute("url", "Login");
			doProcess(request, response, "result.jsp");
		}//end if
	} //end service

} //end class
