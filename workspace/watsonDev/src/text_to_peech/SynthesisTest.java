package text_to_peech;

import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;

import com.ibm.watson.developer_cloud.text_to_speech.v1.TextToSpeech;
import com.ibm.watson.developer_cloud.text_to_speech.v1.model.AudioFormat;
import com.ibm.watson.developer_cloud.text_to_speech.v1.model.Voice;
import com.ibm.watson.developer_cloud.text_to_speech.v1.util.WaveUtils;

public class SynthesisTest {

	public static void main(String[] args) {
		TextToSpeech service = new TextToSpeech("a3ee8a8d-e9fa-4c9c-a526-28351e087a45", "Evu5bXRi7cqe");
		//service.setUsernameAndPassword("a3ee8a8d-e9fa-4c9c-a526-28351e087a45", "Evu5bXRi7cqe");


		try {
			String text = "Hello world";
			InputStream stream = service.synthesize(text, Voice.EN_ALLISON,
					AudioFormat.WAV).execute();
			InputStream in = WaveUtils.reWriteWaveHeader(stream);
			OutputStream out = new FileOutputStream("hello_world.wav");
			byte[] buffer = new byte[1024];
			int length;
			while ((length = in.read(buffer)) > 0) {
				out.write(buffer, 0, length);
			}
			out.close();
			in.close();
			stream.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}

	}

}
