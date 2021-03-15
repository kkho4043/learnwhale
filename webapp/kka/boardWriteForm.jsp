<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/learnwhale/assets/css/category.css">
<link rel="stylesheet" href="/learnwhale/assets/css/board.css">

<c:import url="/kka/blog.jsp"></c:import>

<title>Insert title here</title>
</head>
<body>

	<div id="content">

		<div id="board">
			<div id="list">
				<form action="" method="">
					<div id="content-head">
						<h3>공지사항 쓰기</h3>					
					</div>
				</form>
				<!-- //content-head -->
				
				<div id="board">
				<div id="writeForm">
					<form action="#" method="get">
						<!-- 제목 -->
						<div class="form-group">
							<label class="form-text" for="txt-title">제목</label>
							<input type="text" id="txt-title" name="" value="" placeholder="제목을 입력해 주세요">
						</div>
					
						<!-- 내용 -->
						<div class="form-group">
							<textarea id="txt-content"></textarea>
						</div>
						
						<a id="btn_cancel" href="">취소</a>
						<button id="btn_add" type="submit" >등록</button>
						
					</form>
	                <!-- //form -->
				</div>
				<!-- //writeForm -->
				</div>
				<!-- //board -->	
				
				
				
			</div>
			<!-- //list -->
		</div>
		<!-- //board -->

		<div class="clear"></div>
	  	
	  
	  
	  </div>
	  <!-- //content 끝 -->
</body>
</html>