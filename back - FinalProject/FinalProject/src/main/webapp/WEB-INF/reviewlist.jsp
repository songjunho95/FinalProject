<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>리뷰 목록</title>
    <link rel="stylesheet" href="../css/reviewlist.css" />
    <link rel="stylesheet" href="../reset.css" />
    <script src="https://kit.fontawesome.com/071562b1d0.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300;500&display=swap" rel="stylesheet">
</head>
<body>
  <header class="topmenu">
      <div>
        <img src="/img/바나프레소 로고2.PNG" id="logo" />
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
            <a href="">회원 가입</a>
            <a href="">신메뉴</a>
            <a href="">전체 메뉴</a>
            <a href="">커피이야기</a>
          </li>

          <li>
            <a href="">매장찾기</a>
            <a href="">리뷰 페이지</a>
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
    <main id="mainpage">
        <!-- 평균 평점 표시 섹션 -->
        <section id="averageRating">
            <h2>전체 리뷰 평균 평점</h2>
            <div id="averageRatingValue">평균 평점: 계산 중...</div>
            <a href="/review" class="write-review-button">리뷰 작성하기</a>
        </section>

        <!-- 리뷰 탭 및 콘텐츠 -->
        <section id="reviewTabs">
            <button class="tab-button active" data-tab="best">베스트 리뷰</button>
            <button class="tab-button" data-tab="all">모든 리뷰</button>
            <div class="tab-content best active"></div>
            <div class="tab-content all"></div>
        </section>

        <!-- 리뷰 작성하기로 가는 버튼 추가 -->
  
    </main>
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
	<script src="js/reviewlist.js"></script>
</body>
</html>
