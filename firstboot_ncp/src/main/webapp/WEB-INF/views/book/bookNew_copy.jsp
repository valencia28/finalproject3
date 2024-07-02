<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>      
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
<title>Insert title here</title>

<script src="/jquery-3.7.1.min.js"></script>   
<script>
$(document).ready(function(){
	
});
</script>
<script>
        //페이지 스크롤시 상단 이동 앵커 버튼
        function scrollToTop() {
            window.scrollTo({
                top: 0,
                behavior: 'smooth'
            });
        }

        //main-책 소개 간략히
        document.querySelectorAll('.book_introduction').forEach(intro => {
            if (intro.textContent.length > 150) {
                intro.textContent = intro.textContent.substring(0, 150) + '...';
            }
        });


        //페이지 번호 생성 및 클릭 이벤트 추가
        document.addEventListener("DOMContentLoaded", function () {
            let paginationDiv = document.querySelector(".pagination");
            let totalPages = 10;
            let currentPage = 1;

            for (let i = 1; i <= totalPages; i++) {
                let pageLink = document.createElement("a");
                pageLink.href = "#";
                pageLink.classList.add("page-link");
                pageLink.textContent = i;
                paginationDiv.appendChild(pageLink);
            }

            let pageLinks = document.querySelectorAll(".page-link");
            pageLinks.forEach(function (pageLink) {
                pageLink.addEventListener("click", function (event) {
                    event.preventDefault();
                    currentPage = parseInt(pageLink.textContent);
                    console.log("Clicked page:", currentPage);
                });
            });
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

    <header id="main_header">
        <h2>신상도서 상품</h2>
    </header>

    <main id="main_section">
        <div class="list">
            <div class="book_list">
                <div class="book_thumb_image">
                    <a class="book_link" href="bookDetail.html">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791198517425.jpg" alt="불변의 법칙">
                    </a>
                </div>

                <div class="book_info">
                    <a href="bookDetail.html" class="book_name">불변의 법칙</a><br>
                    <span class="book_author">모건 하우절 · 서삼독 · 2024.02.28</span><br>
                    <span class="book_price">25,000원</span>
                    <p class="book_introduction">
                        세계적인 베스트셀러 《돈의 심리학》의 저자 모건 하우절이 3년 만에 세상에 내놓은 신작.‘절대 변하지 않는 것들에 대한 23가지 이야기’를 전한다.
                        출간하자마자 아마존과 뉴욕타임스 베스트셀러 자리에 오르며 아마존 독자들과 오피니언 리더들의 극찬을 받았다.
                        이번 책은 돈과 투자 영역은 물론이고, 인간의 본성과 세상의 이치에 관한 이야기를 두루 다루어 한층 더 다층적이고 복합적인 메시지를 담아냈다는 평가를 받는다.
                        모건 하우절은 사람들은 무엇이 변할 것인지에 대해 늘 관심을 갖지만, 미래에 대비하기 위해서는 오히려 과거에도 지금도 미래에도 변함이 없는‘불변의 법칙’에 대해 알아야
                        한다고 강조한다.
                        이에 1000년 후에도 유효할 인간의 행동양식과 반복패턴에 대한 흥미로운 역사 스토리와 일화들을 들려준다.
                    </p>
                </div> <!-- book_info_box ends -->

                <div class="book_btn_wrap">
                    <a class="btn_purchase" href="">
                        <span class="text">구매하기</span>
                    </a><br>
                    <a class="btn_review" href="">
                        <span class="text">리뷰보기</span>
                    </a>
                </div> <!-- book_btn_wrap ends -->
            </div> <!-- book_list ends -->

            <div class="book_list">
                <div class="book_thumb_image">
                    <a class="book_link" href="">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791193238196.jpg"
                            alt="몽우리돌의 들녘">
                    </a>
                </div>

                <div class="book_info">
                    <a href="" class="book_name">몽우리돌의 들녘</a><br>
                    <span class="book_author">김동우 · 수오서재 · 2024.01.19</span><br>
                    <span class="book_price">22,000원</span>
                    <p class="book_introduction">
                        독립운동가들의 삶에 사로잡혀 2017년부터 전 세계에 흩어져 있는 독립운동사적지를 직접 찾아가 사진과 글로 기록하고 있는 김동우 작가.
                        취재는 인도, 멕시코, 쿠바, 미국, 러시아, 네덜란드, 카자흐스탄, 우즈베키스탄, 일본을 거쳐 10개국에 이르렀고, 이 책은 그중 러시아와 네덜란드의 한인독립운동
                        이야기다.
                        의병들이 본거지를 만들고 독립운동가들이 망명을 이어간 땅, 연해주. 그곳에 망국 앞에서도 희망을 버리지 않은 사람들의 이야기가 있다.
                        안중근 단지동맹비, 독립운동의 대부 최재형 가옥과 순국지, 자유시 참변의 현장, 영화 〈좋은 놈, 나쁜 놈, 이상한 놈〉의 실제 모티프가 된 ‘15만 원 탈취 의거’,
                        헤이그 특사가 생의 마지막을 보냈던 방, 한인 최초 볼셰비키 혁명가 김알렉산드라, 홍범도 장군의 외손녀 김알라 여사와 이인섭의 막내딸 스베틀라나 여사의 인터뷰 등등
                        《뭉우리돌의 들녘》은
                        역사에서 배제된 채 서서히 사라져가고 있는 이야기에 귀를 기울인다.
                    </p>
                </div> <!-- book_info_box ends -->

                <div class="book_btn_wrap">
                    <a class="btn_purchase" href="">구매하기</a><br>
                    <a class="btn_review" href="">리뷰보기</a>
                </div> <!-- book_btn_wrap ends -->
            </div> <!-- book_list ends -->

            <div class="book_list">
                <div class="book_thumb_image">
                    <a class="book_link" href="">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791191859836.jpg"
                            alt="나는 읽고 쓰고 버린다">
                    </a>
                </div>

                <div class="book_info">
                    <a href="" class="book_name">나는 읽고 쓰고 버린다</a><br>
                    <span class="book_author">손웅정 · 난다 · 2024.04.20</span><br>
                    <span class="book_price">17,000원</span>
                    <p class="book_introduction">
                        대한민국의 전 축구선수, 현 축구 지도자 손웅정 감독의 『나는 읽고 쓰고 버린다』가 출판사 난다에서 출간되었습니다.
                        손웅정 감독이 2010년부터 작성해온 독서 노트를 바탕으로 2023년 3월부터 2024년 3월까지 김민정 시인과 진행한 수차례의 인터뷰를 책으로 묶었습니다.
                        재치 있고 적확한 문학적인 비유, 문제 해결의 연속인 일상을 새롭게 바라보게 해주는 신선한 관점, 물고기를 잡아주는 것이 아닌 물고기를 잡는 법을 유머러스하게 넌지시
                        일러주는
                        따뜻한 진심이 매력인 책으로 독자는 손웅정 감독과 단둘이 대화를 나누는 듯한 친근함과 그 기저에 자리한 담박한 철학에 깊이 감명받을 것입니다.
                    </p>
                </div> <!-- book_info_box ends -->

                <div class="book_btn_wrap">
                    <a class="btn_purchase" href="">구매하기</a><br>
                    <a class="btn_review" href="">리뷰보기</a>
                </div> <!-- book_btn_wrap ends -->
            </div> <!-- book_list ends -->

            <div class="book_list">
                <div class="book_thumb_image">
                    <a class="book_link" href="">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791198682505.jpg"
                            alt="나를 소모하지 않는 현명한 태도에 관하여">
                    </a>
                </div>

                <div class="book_info">
                    <a href="" class="book_name">나를 소모하지 않는 현명한 태도에 관하여</a><br>
                    <span class="book_author">마티아스 뇔케 · 퍼스트펭귄 · 2024.03.10</span><br>
                    <span class="book_price">17,800원</span>
                    <p class="book_introduction">
                        더 성공해야 하고, 더 노력해야 하고, 더 욕망해야 하고, 더 보여줘야 한다는 강박이 난무하는 시대다.
                        그러나 모두가 자기를 내세우고 드러내느라 시끄러운 세상에서는 역설적으로 절제된 말과 행동, 고요함과 평온함이 더 절실히 그리워지고, 더 강력하게 다가오기 마련이다.
                        『나를 소모하지 않는 현명한 태도에 관하여』는 모든 것이 과하게 요구되고, 요란하게 소비되는 시대에 ‘더 현명한 삶의 방식’은 무엇인지를 통찰한 책이다.
                        독일의 언론인이자 베스트셀러 작가이며 문학과 커뮤니케이션 과학, 심리학 등을 두루 공부한 마티아스 뇔케 박사는 특유의 재치와 명쾌함이 돋이는
                        글쓰기로 ‘보여주기 위해 극대화하는 삶이 아닌 조용히 나를 지키는 삶’으로 독자들을 안내한다.
                    </p>
                </div> <!-- book_info_box ends -->

                <div class="book_btn_wrap">
                    <a class="btn_purchase" href="">구매하기</a><br>
                    <a class="btn_review" href="">리뷰보기</a>
                </div> <!-- book_btn_wrap ends -->
            </div> <!-- book_list ends -->

            <div class="book_list">
                <div class="book_thumb_image">
                    <a class="book_link" href="">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791190382434.jpg"
                            alt="몽우리돌의 바다">
                    </a>
                </div>

                <div class="book_info">
                    <a href="" class="book_name">몽우리돌의 바다</a><br>
                    <span class="book_author">김동우 · 수오서재 · 2021.07.29</span><br>
                    <span class="book_price">20,000원</span>
                    <p class="book_introduction">
                        전 세계 각지에 흩어져 있는 독립운동의 흔적을 발굴하고 기록한 최초의 다큐멘터리. 인도에 간 한국광복군, 멕시코의 애니깽 농부들, 체 게바라의 동지, 한인 최초 백만장자,
                        우리 공군이 시작된 땅…
                        이제껏 우리가 들어보지 못한 바다 건너 독립운동가들의 이야기가 펼쳐진다.
                        기자로 활동하다 여행자의 삶을 살던 김동우 작가는 세계일주를 하던 중 우연히 인도 델리 ‘레드 포트’가 한국광복군 훈련지란 사실을 알게 된다.
                        이후 독립운동가들의 삶에 강렬하게 사로잡혀 그들의 흔적을 좇아 기록하기 시작한다. 중국, 인도, 멕시코, 쿠바, 미국, 러시아, 네덜란드, 카자흐스탄, 우즈베키스탄,
                        일본 등 10개국에 이른 생생한 현장 취재기, 그리고 끝끝내 고국으로 돌아오지 못한 독립운동가 후손과의 에피소드를 110컷의 사진과 함께 이 책에 담아냈다.
                        또한 현장에 얽힌 깊고 내밀한 역사를 풀어내기 위해 수많은 논문과 단행본, 국내외 기사를 망라해 독립운동사를 재구성했다.
                    </p>
                </div> <!-- book_info_box ends -->

                <div class="book_btn_wrap">
                    <a class="btn_purchase" href="">구매하기</a><br>
                    <a class="btn_review" href="">리뷰보기</a>
                </div> <!-- book_btn_wrap ends -->
            </div> <!-- book_list ends -->

            <div class="book_list">
                <div class="book_thumb_image">
                    <a class="book_link" href="">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791198530394.jpg"
                            alt="내가 천 개의 인생에서 배운 것들">
                    </a>
                </div>

                <div class="book_info">
                    <a href="" class="book_name">내가 천 개의 인생에서 배운 것들</a><br>
                    <span class="book_author">김도윤 · 북로망스 · 2024.04.17</span><br>
                    <span class="book_price">18,000원</span>
                    <p class="book_introduction">
                        유튜브 200만 구독자, 분야 조회수 1위, 누적 조회수 7억!
                        40만 부 베스트셀러 작가이자 자기계발 분야의 독보적인 저자 김도윤.
                        그는 전문 인터뷰어로서 특유의 친화력과 돌직구 질문으로 13년 동안 세상에서 내로라하는 인물 1,000명을 넘게
                        심층적으로 인터뷰하며 인생에 대한 수많은 인사이트를 얻고 그 내용을 대중에게 알려 왔다.
                    </p>
                </div> <!-- book_info_box ends -->

                <div class="book_btn_wrap">
                    <a class="btn_purchase" href="">구매하기</a><br>
                    <a class="btn_review" href="">리뷰보기</a>
                </div> <!-- book_btn_wrap ends -->
            </div> <!-- book_list ends -->

            <div class="book_list">
                <div class="book_thumb_image">
                    <a class="book_link" href="">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791198530356.jpg"
                            alt="무엇이 나를 행복하게 만드는가">
                    </a>
                </div>

                <div class="book_info">
                    <a href="" class="book_name">무엇이 나를 행복하게 만드는가</a><br>
                    <span class="book_author">리처드 J.라이더 외 · 북플레저 · 2024.03.04</span><br>
                    <span class="book_price">19,800원</span>
                    <p class="book_introduction">
                        아무 걱정 없이 행복하게 웃어본 적이 언제인지 기억이 나는가? 어느 순간부터 행복과 활기를 잊고 정체된 삶을 살아가고 있다.
                        포브스가 선정한 TOP 5 코치에 선정된 리처드 J. 라이더의 대표작 《무엇이 나를 행복하게 만드는가》는 출간한 후 30여 년 동안 전 세계에 깊은 울림을 주었다.
                        이 책에서는 행복한 삶이란 무엇인지 근본적인 물음을 던진다. “무엇이 나를 행복하게 만드는가?”라고 묻는 질문에 지금 내 삶을 이루고 있는 것들을 되돌아보고,
                        이 모든 것이 나를 과연 행복하게 해주는지 생각하게끔 한다.
                    </p>
                </div> <!-- book_info_box ends -->

                <div class="book_btn_wrap">
                    <a class="btn_purchase" href="">구매하기</a><br>
                    <a class="btn_review" href="">리뷰보기</a>
                </div> <!-- book_btn_wrap ends -->
            </div> <!-- book_list ends -->

            <div class="book_list">
                <div class="book_thumb_image">
                    <a class="book_link" href="">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791168418011.jpg"
                            alt="흔한남매 16">
                    </a>
                </div>

                <div class="book_info">
                    <a href="" class="book_name">흔한남매 16</a><br>
                    <span class="book_author">흔한남매 · 미래엔아이세움 · 2024.04.25</span><br>
                    <span class="book_price">14,500원</span>
                    <p class="book_introduction">
                        에이미의 화 참기 도전, 뮤지컬 전쟁을 펼치는 흔한남매, 아이돌 학교에서 살아남는 방법, 너튜버가 된 엄마, 데굴데굴 왕풍선 체험,
                        공포의 노래방 안내 방송 등 개성이 통통 튀는 흔한남매의 일상 속으로 빠져 볼까요?
                    </p>
                </div> <!-- book_info_box ends -->

                <div class="book_btn_wrap">
                    <a class="btn_purchase" href="">구매하기</a><br>
                    <a class="btn_review" href="">리뷰보기</a>
                </div> <!-- book_btn_wrap ends -->
            </div> <!-- book_list ends -->

            <div class="book_list">
                <div class="book_thumb_image">
                    <a class="book_link" href="">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9791193262122.jpg" alt="일류의 조건">
                    </a>
                </div>

                <div class="book_info">
                    <a href="" class="book_name">일류의 조건</a><br>
                    <span class="book_author">사이토 다카시 · 필름(Feelm) · 2024.03.20</span><br>
                    <span class="book_price">19,800원</span>
                    <p class="book_introduction">
                        도서 《일류의 조건》이 국내 첫 출간 후 18년 만에 필름출판사에서 복간되었다. 《일류의 조건》은 일본 메이지 대학교 교수로 재직 중인 사이토 다카시의 대표작으로,
                        그의 저서는 국내에도 많이 소개되며, 누적 1,000만 부 이상의 판매 부수를 기록하고 있는 베스트셀러 작가이다.
                        이 책은 2006년 국내 출간 이후 오랜 시간 절판되어, 중고 거래를 통해 책을 구하는 사람들이 많았다. “책이 절판되어 동네 도서관에서 찾아보고 있다”, “책 읽어보고
                        싶은데 절판되어 구할 수가 없다”,
                        “중고로도 구하기 어려워서 다시 출간되었으면 좋겠다” 등 연일 독자의 출간 요청이 끊이지 않고 이어져 온 책이다.
                    </p>
                </div> <!-- book_info_box ends -->

                <div class="book_btn_wrap">
                    <a class="btn_purchase" href="">구매하기</a><br>
                    <a class="btn_review" href="">리뷰보기</a>
                </div> <!-- book_btn_wrap ends -->
            </div> <!-- book_list ends -->

            <div class="book_list">
                <div class="book_thumb_image">
                    <a class="book_link" href="">
                        <img src="https://contents.kyobobook.co.kr/sih/fit-in/300x0/pdt/9788901276533.jpg"
                            alt="나는 메트로폴리탄 미술관의 경비원입니다(작품 가이드 별책부록 포함)">
                    </a>
                </div>

                <div class="book_info">
                    <a href="" class="book_name">나는 메트로폴리탄 미술관의 경비원입니다(작품 가이드 별책부록 포함)</a><br>
                    <span class="book_author">패트릭 브링리 · 웅진지식하우스 · 2023.11.24</span><br>
                    <span class="book_price">17,500원</span>
                    <p class="book_introduction">
                        『나는 메트로폴리탄 미술관의 경비원입니다』는 뉴욕 메트로폴리탄 미술관에서 경비원으로 근무했던 패트릭 브링리의 독특하면서도 지적인 회고를 담은 에세이다.
                        가족의 죽음으로 고통 속에 웅크리고 있던 한 남자가 미술관에서 10년이라는 시간을 보내며 상실감을 극복하고 마침내 세상으로 나아갈 힘을 얻는 여정을 섬세하게 그려냈다.
                    </p>
                </div> <!-- book_info_box ends -->

                <div class="book_btn_wrap">
                    <a class="btn_purchase" href="">구매하기</a><br>
                    <a class="btn_review" href="">리뷰보기</a>
                </div> <!-- book_btn_wrap ends -->
            </div> <!-- book_list ends -->
            <hr>
        </div>

        <div class="pagination">
            <!-- 페이지 번호 -->
        </div>

        <!-- 페이지 스크롤시 상단 이동 앵커 버튼-->
        <button class="btn_totop" onclick="scrollToTop()">TOP</button>
    </main>
</body>
</html>