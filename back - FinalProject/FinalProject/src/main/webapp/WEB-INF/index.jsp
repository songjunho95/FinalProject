<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/main.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>
        <script src="https://kit.fontawesome.com/071562b1d0.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300;500&display=swap" rel="stylesheet">
    
    <title>Document</title>
</head>
<body>
<header class="topmenu">
    <div>
        <img src="/img/바나프레소 로고.PNG"  id="logo"/>
    </div>

    <div class="allmenu">
        <ul class="menu">
        <li>
            <a href="">소개</a>
        </li>

        <li>
            <a href="">메뉴</a>
        </li>

        <li>
            <a href="">매장찾기</a>
        </li>

        <li>
            <a href="">창업안내</a>
        </li>

        <li>
            <a href="">소식/문의</a>
        </li>

        </ul>
    </div>

</header>

		<div class="header-end">
			<sec:authorize access="!isAuthenticated()">
			<button type="button" onclick="location.href='/login'">
				<!-- <i class="fa-solid fa-user"></i> -->
				로그인
			</button>
			</sec:authorize>
			<sec:authorize access="isAuthenticated()">
			<button type="button" onclick="location.href='/logout'">
				로그아웃
			</button>
			</sec:authorize>
		</div>
			
<section class="allsubmenu">
<div></div>
<div class="submenu">
    <ul>
        <li>
            <a href="">브랜드 소개</a>
            <a href="">앱 소개</a>
            <a href="">경쟁력</a>
        </li>

        <li>
            <a href="/register">회원 가입</a>
            <a href="">신메뉴</a>
            <a href="">전체 메뉴</a>
            <a href="">커피이야기</a>
            
        </li>

        <li>
            <a href="">매장찾기</a>
            <a href="/review">리뷰 페이지</a>
            <a href="/reviewlist">리뷰 리스트</a>
            
        </li>

        <li>
            <a href="">개설절차</a>
            <a href="">가맹사업소개</a>
            <a href="">가맹문의</a>
        </li>

        <li>
            <a href="">입점문의</a>
            <a href="">대관문의</a>
            <a href="">상품권 대량구매</a>
        </li>

        </ul>
    </div>
</section>

<section class="section1">
    <img src="/img/이제훈.PNG" id="star">
</section>

<section class="section2">
<div>
    <h3>NEW MENU</h3>
    <h2>함께 하는 가을</h2>
    <p>
        전라남도 영암 고구마로 만든</br>
        달콤하고 부드러운 '고구마라떼'</br>
        &</br>
        인기에 힘입어 다시 돌아온</br>
        베스트 셀러 '공주밤라떼' 
    </p>
    <a href="#" id="more1">더보기</a>
</div>

<div class="slider__wrap">
    <div class="slider__img">
        <div class="slider__inner">
            <div class="slider"><img src="/img/공주밤라뗴.PNG" id="image1" alt="이미지1"></div>
            <div class="slider"><img src="/img/영암고구마라떼.PNG" id="image2" alt="이미지2"></div>

            <div class="slider"><img src="/img/영암고구마라떼.PNG" id="image2"></div>
            <div class="slider"><img src="/img/공주밤라뗴.PNG" id="image1"></div>
        </div>
    </div>
</div>
</section>

<section class="section3">

    <div class="slider__wrap">
        <div class="slider__img">
            <div class="slider__inner">
                <div class="slider"><img src="/img/진짜감자빵.PNG" id="image3"></div>
                <div class="slider"><img src="/img/진짜고구마빵.PNG" id="image4"></div>

                <div class="slider"><img src="/img/진짜고구마빵.PNG" id="image4"></div>
                <div class="slider"><img src="/img/진짜감자빵.PNG" id="image3"></div>
            </div>
         </div>
    </div>

<div>
    <h3>NEW BREAD</h3>
    <h2>쫄깃한 가을 신메뉴</h2>
    <p>
        달큰하고 포슬한</br>
        '진짜 고구마빵'</br>
        &</br>
        짭짤하고 포슬한</br>
        '진짜 감자빵'
    </p>
    <a href="#" id="more2">더보기</a>
</div>

</section>

<section class="section4">
<div>
    <h3>NEW DESSERT</h3>
    <h2>티그레 2종 출시</h2>
    <p>
        호랑이 무늬를 닮은</br>
        새로운 디저트의 등장!</br>
        황치즈 & 피스타치오</br>
    </p>
    <a href="#" id="more3">더보기</a>
</div>

<div class="slider__wrap">
    <div class="slider__img">
        <div class="slider__inner">
            <div class="slider"><img src="/img/황치즈티그레.PNG" id="image5"></div>
            <div class="slider"><img src="/img/피스타치오티그레.PNG" id="image6"></div>
			
			<div class="slider"><img src="/img/황치즈티그레.PNG" id="image6"></div>
            <div class="slider"><img src="/img/피스타치오티그레.PNG" id="image5"></div>
        </div>
     </div>
</div>

</section>

<section class="section5">
    <div class="app">
        <h1>빠르고 편리한 바나앱</h1>
        <p>  
            앱에서 편리하게 주문하고</br>
            다양한 이벤트와 혜택도 누려보세요!
        </p> 
        <div class="URL">
            <input type="text" placeholder="(-)없이 휴대폰 번호 입력" id="phone" />
            <button>URL 받기</button>
        </div>
        <img src="/img/앱 버튼.png">
    </div>

    <div class="map">
   
        <h1>가까운 매장 찾기</h1>
        <p>전국어디서나 바나를 만나보세요</p>
        <div>
            <input type="text" placeholder="매장명 또는 주소" id="text" />
            <button onclick="">검색</button>
        </div>
    <img src="/img/지도.png">
    </div>
</section>

<footer>

    <img src="/img/바나프레소 흑백 로고.png">
    <div>
    <a>개인정보처리방침</a>
    <a>이용약관</a>
    <a>입점문의</a>
    <a>가맹문의</a>
    <a>제휴제안 및 기타문의</a>
    <a>매장 이용 및 고객 문의</a>
    <a>대관문의</a>
    <a>상품권 대량구매</a>
</div>   
    <h4>상호명 : (주)바나플에프엔비</h4>
    <p>
        대표자명 : 송민기 / 사업장 소재지 : 서울특별시 강남구 테헤란로 81길 9 (삼성동,바나플빌딩) 3층 / 사업자번호 : 358-87-00860 </br>
        대표전화 : 1811 - 1111 / 고객문의 : qna@banapresso.com 또는 1811-1111
    </p>
</footer>
<script src="/js/main.js"></script>
<script src="/js/jQurey.js"></script>
<script>
	// 로컬 스토리지에 담긴 토큰 가져오기
	const token = localStorage.getItem("token");
	
	$("#logout").click(() => {
		localStorage.removeItem("token");
	})
	

	</script>
</body>
</html>
