package _0704.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/IamServlet")
public class IamServlet extends HttpServlet {
	private void doProcess(
			HttpServletRequest request, 
			HttpServletResponse response, 
			String url) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
	
	//WEB-INF는 브라우저에서 접근 불가 > 보안성이 높다
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response, "/WEB-INF/views/_0704/form.jsp");
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String iam = "그래, 난 " + request.getParameter("name");
		request.setAttribute("iam", iam);
		doProcess(request, response, "/WEB-INF/views/_0704/process.jsp");
	}

}

