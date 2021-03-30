<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>

<!-- css -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ban/banCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ban/notice.css" rel="stylesheet" type="text/css">

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>
<body>

	<!-- head-Area -->
	<c:import url="/WEB-INF/views/ban/include/header.jsp"></c:import>
	<!-- //head-Area -->

	<!-- content, container 영역-->
	<div class="container">
		<div class="row">

			<div id="content">

				<!-- 왼쪽 영역-->
				<c:import url="/WEB-INF/views/ban/include/aside.jsp"></c:import>
				<!-- //왼쪽 영역-->

				<!-- 오른쪽 영역 -->
				<div id="main-area" class="col-xs-10">
					<!-- 위치 -->
					<div id="breadcrumb-area">
						<ol class="breadcrumb pull-right">
							<li class="breadcrumb-item">공지사항</li>
						</ol>
					</div>
					<!-- //위치 -->

					<!-- 메인영역 타이틀 -->
					<div id="main-title">
						<div class="row">
							<div class="col-xs-12">
								<p>공지사항</p>
							</div>
						</div>
					</div>
					<!-- //메인영역 타이틀 -->



					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->
					<div id="main-content-area">

						<div class="row">
							<div class="col-xs-12">

								<div id="board">
									<div id="modifyForm">
										<form action="${pageContext.request.contextPath}/${url}/notice/modify" method="get">
											<!-- 작성자 -->
											<div class="form-group">
												<span class="form-text">작성자</span> <span class="form-value">${noticeVo.name}</span>
											</div>

											<!-- 조회수 -->
											<div class="form-group">
												<span class="form-text">조회수</span> <span class="form-value">${noticeVo.hit}</span>
											</div>

											<!-- 작성일 -->
											<div class="form-group">
												<span class="form-text">작성일</span> <span class="form-value">${noticeVo.reg_date}</span>
											</div>

											<!-- 제목 -->
											<div class="form-group">
												<label class="form-text" for="txt-title">제목</label>
												<input type="text" id="txt-title" name="title" value="${noticeVo.title}">
											</div>

											<!-- 내용 -->
											<div class="form-group">
												<textarea id="txt-content" name="content">${noticeVo.content}</textarea>
											</div>

											<a id="btn_cancel" href="${pageContext.request.contextPath}/${url}/notice/list">취소</a>
											
											<button id="btn_modify" type="submit">수정</button>
											<input type="hidden" name="no" value="${noticeVo.no}">

										</form>
										<!-- //form -->
									</div>
									<!-- //modifyForm -->
								</div>
								<!-- //board -->


							</div>
						</div>

					</div>
					<!-- //main-content-area -->
					<!-- //여기서부터 각페이지에 맞게 코딩 끝 -->


				</div>
				<!-- //오른쪽 영역 -->

			</div>
			<!-- //content -->

		</div>
		<!-- //content row-->

	</div>
	<!-- //content, container 영역-->

	<!-- footer-Area -->
	<c:import url="/WEB-INF/views/ban/include/footer.jsp"></c:import>
	<!-- //footer-Area container 영역-->

</body>
</html>