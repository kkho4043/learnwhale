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
						<h3>공지사항 보기</h3>					
					</div>
				</form>
				<!-- //content-head -->
				
								
				<div id="board">
					<div id="modifyForm">
						<form action="#" method="get">
							<!-- 작성자 -->
							<div class="form-group">
								<span class="form-text">작성자</span>
								<span class="form-value">선생님</span>
							</div>
							
							<!-- 조회수 -->
							<div class="form-group">
								<span class="form-text">조회수</span>
								<span class="form-value">123</span>
							</div>
							
							<!-- 작성일 -->
							<div class="form-group">
								<span class="form-text">작성일</span>
								<span class="form-value">2021-03-15</span>
							</div>
							
							<!-- 제목 -->
							<div class="form-group">
								<label class="form-text" for="txt-title">제목</label>
								<input type="text" id="txt-title" name="" value="여기에는 글제목이 출력됩니다.">
							</div>
						
							
						
							<!-- 내용 -->
							<div class="form-group">
								<textarea id="txt-content">여기에는 본문내용이 출력됩니다.
	여기에는 본문내용이 출력됩니다.
	여기에는 본문내용이 출력됩니다.
	여기에는 본문내용이 출력됩니다.
	여기에는 본문내용이 출력됩니다.
	여기에는 본문내용이 출력됩니다.
	여기에는 본문내용이 출력됩니다.
	여기에는 본문내용이 출력됩니다.</textarea>
							</div>
							
							<a id="btn_cancel" href="">취소</a>
							<button id="btn_modify" type="submit" >수정</button>
							
						</form>
		                <!-- //form -->
					</div>
					<!-- //modifyForm -->
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