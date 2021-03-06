

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.awt.image.renderable.ParameterBlock;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

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
 * Servlet implementation class UploadServlet
 */
//@WebServlet("/file/upload.do")
public class UploadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out = response.getWriter();
		
		boolean isImage = false; //이미지 파일인지 아닌지 체크
		
		//여기를 바꿔주면 경로가 바뀜
		String savePath = "upload";
		
		//최대 업로드 파일 크기 : 5MB
		int uploadFileSizeLimit = 5 * 1024 * 1024;
		String encType = "UTF-8";
		
		ServletContext context = getServletContext();
		String uploadFilePath = "C:/dev/upload"; //context.getRealPath(savePath);
		System.out.println("서버상의 실제 디렉토리 : ");
		System.out.println(uploadFilePath);
		
		File dir = new File(uploadFilePath);
		if(!dir.exists()) {
			dir.mkdir();
		}		
		
		try {
			MultipartRequest multi = new MultipartRequest(request, //request 객체
														  uploadFilePath, //서버상의 실제 디렉토리
														  uploadFileSizeLimit, //최대 업로드 파일 크기
														  encType, //인코딩 방법
														  new DefaultFileRenamePolicy() //동일한 이름이 존재하면 새로운 이름이 부여
														  );
			String fileName = multi.getFilesystemName("uploadFile");
			
			System.out.println(multi.getContentType("uploadFile"));
			
			isImage = multi.getContentType("uploadFile").substring(0, 6).toLowerCase().equals("image/"); //image file이면 true
			String ext = multi.getContentType("uploadFile").substring(6); //확장자
			
			//이미지 압축
			if(isImage) {
				ParameterBlock pb = new ParameterBlock();
				pb.add(uploadFilePath + "/" + fileName);
				RenderedOp rOp = JAI.create("fileload", pb);
				BufferedImage bi = rOp.getAsBufferedImage();
				BufferedImage thumb = new BufferedImage(100, 100, BufferedImage.TYPE_INT_RGB);
				
				Graphics2D g = thumb.createGraphics();
				g.drawImage(bi, 0, 0, 100, 100, null);
				
				File f = new File(uploadFilePath + "/thumb_" + fileName);
				ImageIO.write(thumb, ext, f);
			}
			
			
			
			if(fileName == null) { //파일이 업로드 되지 않았을 때
				System.out.println("Failure upload file");
			} else { //파일이 업로드 되었을 때
				out.println("<br> name : " + multi.getParameter("name"));
				out.println("<br> title : " + multi.getParameter("title"));
				out.println("<br> file name : <a href='download.do?filename=" + fileName + "'>" + fileName + "</a>");
				
				if(isImage) {
					out.println("<hr />");
					//out.println("<br /> <img src='>" + uploadFilePath + "'/>");
					out.println(
							"<br/><img src='download.do?filename=" + 
							"thumb_" + fileName + "' />");
					out.println(
							"<br/><img src='download.do?filename=" + 
							fileName + "' />");
				}
				
				if(multi.getContentType("uploadFile").equals("audio/mp3")) {
					out.println("<audio src='download.do?filename=" + fileName +"'autoplay='autoplay' controls='controls' />");
				}
				
			} //end if
			
		} catch (Exception e) {
			System.out.println("Exception : " + e);
		}
		
	} //end doPost

} //end class
