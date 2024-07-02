package book;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class BookBestController {
	
	@Autowired
	BookService book_service;
		
	//주문수 많은 책 베스트 3가지 
	 @GetMapping("/bookbest")
	 ModelAndView getTop3BooksByQuantity() {
		 //List<BookBestDTO> books = bookBestService.getTop3BooksByQuantity();
		 //model.addAttribute("books", books);
		 
		 ModelAndView mv = new ModelAndView();
		 
		 String[] bestBookTitle = {"불변의 법칙", "테스트4", "테스트15"};
		 
		 BookDTO[] bestBookDto = new BookDTO[3];
		 
		 for(int i = 0; i < 3; i++) {
			 System.out.println(bestBookTitle[i]);
			 bestBookDto[i] = book_service.getBookByTitle(bestBookTitle[i]);
		 }
		 
		 mv.addObject("bestbookdto", bestBookDto);
		 mv.setViewName("book/bookBest");
		 
		 return mv;
	 }
	 	 
}
























