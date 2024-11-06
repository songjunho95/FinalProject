<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
	crossorigin="anonymous" />
<link rel="stylesheet" href="/css/view.css" />
	
	
</head>
<body>
	<div class="container">
		<h1>게시물 정보</h1>
		<form action="/update" method="post" enctype="multipart/form-data">
			<input type="hidden" name="no" value="${review.review_code}"/>
			<input type="hidden" name="url" value="${review.url}"/>
		

			<div class="form-group">
				<label>review_title</label> 
				<input class="form-control" name="review_title" value="${review.review_title}">
			</div>
			<div class="form-group">
				<label>review_opinion</label>
				<textarea class="form-control" name="review_opinion" rows="10">${review.review_opinion}</textarea>
			</div>
			
			<div class="form-group">
				<label>review_rating</label> <input class="form-control" name="review_rating"
					value="${review.review_rating}">
			</div>
			
			
			
			<!-- img 태그 사용! 
				수정시 file이 있다면 기존 파일은 삭제 하고 새로 추가된 파일로 업로드하고 DB 수정
				삭제시 업로드한 파일도 삭제 (파일 삭제 : File 객체의 delete() 메서드 사용 )
			-->
			<div class="form-group">
				<label>Add File</label> <input class="form-control" name="file"
					type="file" accept="image/*">
			</div>
			
			<img  src= "C:\\Users\\user1\\Desktop\\바나프레소 이미지\\ ${review.url}" width=100px; height=100px />
			
			<button type="submit" class="btn btn-outline-warning">수정</button>
			
			<a class="btn btn-outline-danger" href="/delete?no=${review.review_code}">삭제</a>
		
		</form>
	</div>
</body>
</html>




