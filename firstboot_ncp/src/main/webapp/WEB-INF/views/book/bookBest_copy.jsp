BookNewController.java<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>bookBest</title>
<link rel="stylesheet" href="css/style.css" />

<script src="/jquery-3.7.1.min.js"></script>   
<script>
$(document).ready(function(){
	
});
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

    <main class="best-book">
        <h1>일간 베스트 상품</h1>
        <div class="best-box">
            <div class="best-box__books">
                <span>BEST 1</span>
                <h1>불변의 법칙</h1>
                <div class="card">
                    <div class="image-box">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791198517425.jpg">
                    </div>
                    <div class="content">
                        <h2>모건 하우절 · 서삼독</h2>
                        <p>세계적인 베스트셀러 《돈의 심리학》의 저자 모건 하우절이 3년 만에 세상에 내놓은 신작.‘절대 변하지 않는 것들에 대한 23가지 이야기’를 전한다...</p>
                    </div>
                </div>
            </div>
            <div class="best-box__books">
                <span>BEST 2</span>
                <h1>몽우리돌의 들녘</h1>
                <div class="card">
                    <div class="image-box">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791193238196.jpg">
                    </div>
                    <div class="content">
                        <h2>김동우 · 수오서재</h2>
                        <p>독립운동가들의 삶에 사로잡혀 2017년부터 전 세계에 흩어져 있는 독립운동사적지를 직접 찾아가 사진과 글로 기록하고 있는 김동우 작가...</p>
                    </div>
                </div>
            </div>
            <div class="best-box__books">
                <span>BEST 3</span>
                <h1>나는 읽고 쓰고 버린다</h1>
                <div class="card">
                    <div class="image-box">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791191859836.jpg">
                    </div>
                    <div class="content">
                        <h2>손웅정 · 난다</h2>
                        <p>대한민국의 전 축구선수, 현 축구 지도자 손웅정 감독의 『나는 읽고 쓰고 버린다』가 출판사 난다에서 출간되었습니다...</p>
                    </div>
                </div>
            </div>
        </div>
    </main>
    
    <script src="https://code.jquery.com/jquery-3.7.0.js"
        integrity="sha256-JlqSTELeR4TLqP0OG9dxM7yDPqX1ox/HfgiSLBj8+kM=" crossorigin="anonymous"></script>
    <script src="bookMain.js"></script>
    <script src="https://kit.fontawesome.com/5c3afda2cc.js" crossorigin="anonymous"></script>  
    
</body>
</html>