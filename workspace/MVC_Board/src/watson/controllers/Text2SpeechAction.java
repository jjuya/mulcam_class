package watson.controllers;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.ibm.watson.developer_cloud.http.ServiceCall;
import com.ibm.watson.developer_cloud.text_to_speech.v1.TextToSpeech;
import com.ibm.watson.developer_cloud.text_to_speech.v1.model.Voice;

import article.controllers.AbstractController;
import article.controllers.ModelAndView;

public class Text2SpeechAction extends AbstractController{
	
	private static Logger logger = LoggerFactory.getLogger(Text2SpeechAction.class);
	
	@Override
	public ModelAndView handleRequestInternal(HttpServletRequest request, HttpServletResponse response) {
		String statement = request.getParameter("statement");
		String voice = request.getParameter("voice");
		
		logger.info(statement);
		logger.info(voice);
		
		return null;
	}

}
