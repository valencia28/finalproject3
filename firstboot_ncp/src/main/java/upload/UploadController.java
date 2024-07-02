package upload;

import java.io.File;
import java.io.IOException;
import java.util.UUID;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class UploadController {
	
	@GetMapping("/fileupload")
	String uploadForm(){
		return "upload/uploadform";
	}
	
	@PostMapping("/fileupload")
	ModelAndView uploadResult(@ModelAttribute("dto") UploadDTO dto) throws IOException{
		String savePath = "c:/fullstack/upload/";
		
		MultipartFile file1 = dto.getFile1();
		String newFileName1 = null;
		
		if(!file1.isEmpty()) {
			String originalName1 = file1.getOriginalFilename();
			
			//파일이름 확장자 앞쪽 예: a.txt이면 a 부분만 읽은것
			String beforeExt1 = originalName1.substring(0, originalName1.indexOf("."));
			
			//파일이름 확장자 뒤쪽 예: a.txt이면 .txt 부분만 읽은것
			String ext1 = originalName1.substring(originalName1.indexOf("."));
			
			newFileName1 = beforeExt1 + "(" + UUID.randomUUID().toString() +")" + ext1;
			
			file1.transferTo(new File(savePath + newFileName1));
		}
		
		
		MultipartFile file2 = dto.getFile2();
		String newFileName2 = null;
		
		if(!file2.isEmpty()) {
			String originalName2 = file2.getOriginalFilename();
			
			//파일이름 확장자 앞쪽 예: a.txt이면 a 부분만 읽은것
			String beforeExt2 = originalName2.substring(0, originalName2.indexOf("."));
			
			//파일이름 확장자 뒤쪽 예: a.txt이면 .txt 부분만 읽은것
			String ext2 = originalName2.substring(originalName2.indexOf("."));
			
			newFileName2 = beforeExt2 + "(" + UUID.randomUUID().toString() +")" + ext2;
			
			file2.transferTo(new File(savePath + newFileName2));
		}
				
				
		ModelAndView mv = new ModelAndView();
		//mv.addObject(mv;)
		mv.addObject("uploadresult1", savePath + newFileName1 + " 파일 저장 완료" );
		mv.addObject("uploadresult2", savePath + newFileName2 + " 파일 저장 완료" );
		
		mv.setViewName("upload/uploadresult");
		return mv;
	}
}









