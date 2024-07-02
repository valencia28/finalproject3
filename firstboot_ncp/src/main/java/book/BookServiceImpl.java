package book;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;



@Service
public class BookServiceImpl implements BookService {
	@Autowired
	BookDAO dao;

	@Override
	public List<BookDTO> getAllBooks() {
		return dao.getAllBooks();
	}

	@Override
	public int getTotalCount() {
		return dao.totalCount();
	}
	
	@Override
	public List<BookDTO> getPagingBookNewList(int[] limit) {
		return dao.getPagingBookNewList(limit);
	}

	@Override
	public BookDTO getBookByTitle(String title) {
		return dao.getBookByTitle(title);
	}	
	
	
}
