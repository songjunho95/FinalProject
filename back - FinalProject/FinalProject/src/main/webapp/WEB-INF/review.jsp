<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="/css/review.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.13.2/jquery-ui.min.js"></script>

    <title>Document</title>
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
        <!-- 리뷰 작성 폼 -->
        <section id="reviewForm">
            <h2>리뷰 작성하기</h2>
            <form id="reviewFormContent" enctype="multipart/form-data">
                <label for="rating">별점:</label>
                <select id="rating" name="rating" required>
                    <option value="" selected>선택하기</option>
                    <option value="1">⭐</option>
                    <option value="2">⭐⭐</option>
                    <option value="3">⭐⭐⭐</option>
                    <option value="4">⭐⭐⭐⭐</option>
                    <option value="5">⭐⭐⭐⭐⭐</option>
                </select>
                
                <label for="textbox">의견쓰기:</label>
                <textarea id="textbox" name="textbox" required></textarea>
                
                <label for="imageUpload">사진 업로드:</label>
                <input type="file" id="imageUpload" name="imageUpload" accept="image/*">
                <img id="imagePreview" src="" alt="Image Preview" style="display: none;">
                <div id="feedbackMessage" style="display: none;"></div>
                <button type="submit">등록</button>
                
            </form>
            <!-- 리뷰 리스트로 가는 버튼 추가 -->
            <a href="./리뷰리스트.html" class="review-list-button">리뷰 리스트 보기</a>
        </section>
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
    <script src="/js/review.js"></script>

  </body>
</html>
    