package upload;

import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;

import jakarta.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DownloadController {
	
	
	// c:/fullstack/upload에 있는 파일리스트를 보여주는 메서드
	@RequestMapping("/filedownloadlist")
	ModelAndView downloadlist() {
		File f = new File(UploadInform.uploadPath);
		String [] filearray = f.list();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("filearray", filearray);
		mv.setViewName("upload/downloadlist");
		return mv;
		
	}	
	
	
	// c:/fullstack/upload에 있는 파일리스트에서 한개의 파일을 다운로드 하는 메서드
	@RequestMapping("/filedownladresult")
	void downloadresult(String filename, HttpServletResponse response) throws IOException{
		response.setContentType("application/download");
		//view 없음
		response.setContentLength( (int) (new File(UploadInform.uploadPath+filename).length()) );
		response.setHeader("Content-Disposition", "attachment;filename=\"" + filename +  "\"");
		
		OutputStream out = response.getOutputStream();
		FileInputStream fin = new FileInputStream(new File(UploadInform.uploadPath+filename));
		FileCopyUtils.copy(fin, out);
		fin.close();
		out.close();
	}
}





