package book;

import java.util.Date;

import org.springframework.stereotype.Component;

@Component
public class BookDTO {
    private String book_no;
    private String book_title;
    private String book_author;
    private String book_published_date;
    private int book_price;
    private String book_image_url;
    private String book_content;
    
	public String getBook_no() {
		return book_no;
	}
	public void setBook_no(String book_no) {
		this.book_no = book_no;
	}
	public String getBook_title() {
		return book_title;
	}
	public void setBook_title(String book_title) {
		this.book_title = book_title;
	}
	public String getBook_author() {
		return book_author;
	}
	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}
	public String getBook_published_date() {
		return book_published_date;
	}
	public void setBook_published_date(String book_published_date) {
		this.book_published_date = book_published_date;
	}
	public int getBook_price() {
		return book_price;
	}
	public void setBook_price(int book_price) {
		this.book_price = book_price;
	}
	public String getBook_image_url() {
		return book_image_url;
	}
	public void setBook_image_url(String book_image_url) {
		this.book_image_url = book_image_url;
	}
	public String getBook_content() {
		return book_content;
	}
	public void setBook_content(String book_content) {
		this.book_content = book_content;
	} 
	
}
    