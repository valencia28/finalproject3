<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<!-- <link rel="stylesheet" href="css/style.css"> -->
<title>Insert title here</title>

<script src="/jquery-3.7.1.min.js"></script>   
<script>
$(document).ready(function(){
    // main-책 소개 간략히
    $('.book_introduction').each(function() {
        if ($(this).text().length > 150) {
            $(this).text($(this).text().substring(0, 150) + '...');
        }
    });

    // 스크롤 버튼 클릭 이벤트
    $('#scrollToTopBtn').click(scrollToTop);
	}); 

	//페이지 스크롤 시 상단 이동 앵커 버튼 기능
	function scrollToTop() {
	    window.scrollTo({
	        top: 0,
	        behavior: 'smooth'
	    });
	} 
</script>    
</head>
<body>
<header class="screen-header">
        <span><a href="index.html">READING LOG</a></span>
        <div class="screen-header__search">
            <input type="text" id="searchInput" placeholder="검색어 입력" onkeydown="handleSearch(event)">
            <i onclick="searchBooks()" class="fa-solid fa-magnifying-glass fa-lg"></i>

        </div>

        <div class="screen-header__user">
            <a href="bookLogIn.html">Log In</a>
            <a href="bookSignIn.html">Sign In</a>
        </div>
    </header>

    <nav class="header-nav">
        <ul class="header-nav__lists">
            <li><a href="bookBest.html">Best</a></li>
            <li><a href="bookNew.html">New</a></li>
            <li><a href="bookBoard.html">Community</a></li>
        </ul>
    </nav>

    <header id="main_header">
        <h2>신상도서 상품</h2>
    </header>

    <main id="main_section">
    	<c:forEach var="book" items="${booknewlist }">
        <div class="list">
            <div class="book_list">
                <div class="book_thumb_image">
                    <a class="book_link" href="bookdetail?title=${book.book_title }">
                        <img src="${book.book_image_url }" alt="${book.book_title }">
                    </a>
                </div>

                <div class="book_info">
                    <a href="bookdetail?title=${book.book_title }" class="book_name">${book.book_title }</a><br>
                    <span class="book_author">${book.book_author } · ${book.book_published_date }</span><br>
                    <span class="book_price">${book.book_price }원</span>
                    <p class="book_introduction">
                        ${book.book_content }
                    </p>
                </div> <!-- book_info_box ends -->

                <div class="book_btn_wrap">
                	<a class="btn_cart" href="">
                        <span class="text">장바구니</span>
                    </a><br>
                    <a class="btn_purchase" href="">
                        <span class="text">구매하기</span>
                    </a><br>
                    <a class="btn_review" href="">
                        <span class="text">리뷰보기</span>
                    </a>
                </div> <!-- book_btn_wrap ends -->
            </div> <!-- book_list ends -->
            <hr>
        </div>
        </c:forEach>

        <div class="pagination">
            <!-- 페이지 번호 -->
            <%
			int booknewtotal = (Integer)request.getAttribute("booknewtotal");
			int totalpage = 0;
			if(booknewtotal % 10 == 0){
				totalpage = booknewtotal /10;
			}
			else{
				totalpage = booknewtotal /10+1;
			}
			
			for(int i =1; i<= totalpage; i++){
			%>	
			
			<a href="booknew?pagenum=<%=i%>"><%=i %></a>
			<%
			}
			%>
        </div>

        <!-- 페이지 스크롤시 상단 이동 앵커 버튼-->
        <button class="btn_totop" onclick="scrollToTop()">TOP</button>
    </main>
</body>
</html>