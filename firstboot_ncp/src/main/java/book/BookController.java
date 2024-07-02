package book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BookController {
	
	@Autowired
	BookServiceImpl bookService;
	
	//페이지당 10개 책 목록씩 보여주기
	@RequestMapping("/booknew")
	ModelAndView booknewlist(@RequestParam(value="pagenum", required=false, defaultValue="1") int pagenum) {
		int pagecount = 10;
		int start = (pagenum -1) * pagecount;		
		int limit[] = {start, pagecount};
		
		int booknewtotal = bookService.getTotalCount();
		List<BookDTO> booknewlist = bookService.getPagingBookNewList(limit);
				
		ModelAndView mv = new ModelAndView();
		mv.addObject("booknewtotal", booknewtotal);
		mv.addObject("booknewlist", booknewlist);		
		mv.setViewName("book/bookNew");   //프로젝트 시 "view폴더 이름/.jsp파일이름" 수정
		return mv;
	}	  
	
	//책 상세페이지(bookDetail.jsp)로 이동
	@RequestMapping("/bookdetail")
	ModelAndView bookDetail(@RequestParam("title") String title) {
		BookDTO book = bookService.getBookByTitle(title);
		ModelAndView mv = new ModelAndView();
		mv.addObject("book", book);
		mv.setViewName("book/bookDetail");
		return mv;
	}
	

	 
}
























