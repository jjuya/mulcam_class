package _0713.util;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.awt.image.renderable.ParameterBlock;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.imageio.ImageIO;
import javax.media.jai.JAI;
import javax.media.jai.RenderedOp;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class MultiUploadServlet
 */
@WebServlet("/upload2.do")
public class MultiUploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		String savePath = "upload";
		int uploadFileSizeLimit = 5 * 1024 * 1024;
		String encType = "UTF-8";
		
		ServletContext context = getServletContext();
		String uploadFilePath = "C:/dev/upload"; //context.getRealPath(savePath);
		
		try {
			MultipartRequest multi = new MultipartRequest(request, //request 객체
														  uploadFilePath, //서버상의 실제 디렉토리
														  uploadFileSizeLimit, //최대 업로드 파일 크기
														  encType, //인코딩 방법
														  new DefaultFileRenamePolicy() //동일한 이름이 존재하면 새로운 이름이 부여
														  );
			Enumeration files = multi.getFileNames();
			
			while(files.hasMoreElements()) {
				String file = (String) files.nextElement();
				String file_name = multi.getFilesystemName(file);
				
				String ori_file_name = multi.getOriginalFileName(file);
				
				out.println("<br> name : " + multi.getParameter("name"));
				out.println("<br> title : " + multi.getParameter("title"));
				out.println("<br> file name : " + ori_file_name);
			}
			
		} catch (Exception e) {
			System.out.println("Exception : " + e);
		}
	}

}
