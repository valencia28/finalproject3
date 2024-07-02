package book;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
/* @Mapper */
public class BookDAO {
	
	 @Autowired 
	 SqlSession session;
	 
	
	//BookNew 첫 전체 목록 보여주기
	List<BookDTO> getAllBooks() {
		return session.selectList("getAllBooks");
	}
	
	
	//페이지당 10개 목록씩 보여주기
	int totalCount() {
		return session.selectOne("totalCount");
	}
	    
	List<BookDTO> getPagingBookNewList(int limit[]) {
		return session.selectList("getPagingBookNewList", limit);
	}
	
	//bookDetail연동
	BookDTO getBookByTitle(@Param("title") String title) {
		return session.selectOne("getBookByTitle", title);
	}
	
}
