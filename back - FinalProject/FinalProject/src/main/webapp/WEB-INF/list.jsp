<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/css/main.css">
   <script src="https://kit.fontawesome.com/071562b1d0.js" crossorigin="anonymous"></script>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sunflower:wght@300;500&display=swap" rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous" />
	<link rel="stylesheet" href="/css/main.css">
	
	
	
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
            <a href="/signup">회원 가입</a>
            <a href="">신메뉴</a>
            <a href="">전체 메뉴</a>
            <a href="">커피이야기</a>
            
        </li>

        <li>
            <a href="">매장찾기</a>
            <a href="/review">리뷰 페이지</a>
            <a href="/list">리뷰 리스트</a>
            
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









	<div class="container">
		
		<div class="header">
			<h1>List Page</h1>
			<a href="/review" class="btn btn-outline-warning">게시글 등록</a>
		</div>
		
		<table class="table">
			<thead>
				<tr>
					<th>#번호</th>
					<th>제목</th>
					<th>별점</th>
				</tr>
			</thead>
			<tbody>
				<!-- 리스트 가져다가 뿌려주세요! -->
				<c:forEach items="${list}" var="review" varStatus="status">
					<tr>
						<td>${review.review_code}</td>
						<td><a href="/view?no=${review.review_code}">${review.review_title}</a></td>
						<td>
							${review.review_rating}
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

		<ul class="pagination">
			<li class="page-item ${paging.prev ? '' : 'disabled'}">
				<a class="page-link" href="/list?page=${paging.startPage - 1}">Previous</a>
			</li>
			<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="page">
			<li class="page-item">
				<a class="page-link ${paging.page == page ? 'active' : ''}" href="/list?page=${page}">${page}</a>
			</li>
			</c:forEach>
			<li class="page-item ${paging.next ? '' : 'disabled'}">
				<a class="page-link" href="/list?page=${paging.endPage + 1}">Next</a>
			</li>
		</ul>
	</div>
	
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
	
	
</body>
</html>






