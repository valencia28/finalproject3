package book;

import java.util.List;


public interface BookService {
	
	//BookNew 첫 전체 목록 보여주기
	List<BookDTO> getAllBooks();
	
	//페이지당 10개 목록씩 보여주기	
	int getTotalCount();
	
	List<BookDTO> getPagingBookNewList(int [] limit);
	
	
	//bookDetail 연동
	BookDTO getBookByTitle(String title);
}
