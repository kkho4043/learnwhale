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
						<h3>공지사항  읽기</h3>					
					</div>
				</form>
				<!-- //content-head -->
				
				<div id="board">
				<div id="read">
					<form action="#" method="get">
						<!-- 작성자 -->
						<div class="form-group">
							<span class="form-text">작성자</span>
							<span class="form-value">정우성</span>
						</div>
						
						<!-- 조회수 -->
						<div class="form-group">
							<span class="form-text">조회수</span>
							<span class="form-value">123</span>
						</div>
						
						<!-- 작성일 -->
						<div class="form-group">
							<span class="form-text">작성일</span>
							<span class="form-value">2020-03-02</span>
						</div>
						
						<!-- 제목 -->
						<div class="form-group">
							<span class="form-text">제 목</span>
							<span class="form-value">여기에는 글제목이 출력됩니다.</span>
						</div>
					
						<!-- 내용 -->
						<div id="txt-content">
							<span class="form-value" >
								여기에는 본문내용이 출력됩니다.<br>
								여기에는 본문내용이 출력됩니다.<br>
								여기에는 본문내용이 출력됩니다.<br>
								여기에는 본문내용이 출력됩니다.<br>
								여기에는 본문내용이 출력됩니다.<br>
								여기에는 본문내용이 출력됩니다.<br>
								여기에는 본문내용이 출력됩니다.<br>
								여기에는 본문내용이 출력됩니다.<br>
							</span>
						</div>
						
						<a id="btn_modify" href="">수정</a>
						<a id="btn_modify" href="">목록</a>
						

			</div>
			<!-- //list -->
		</div>
		<!-- //board -->
		<div class="clear"></div>
	  	
	  </div>
	  <!-- //content 끝 -->
</body>
</html>