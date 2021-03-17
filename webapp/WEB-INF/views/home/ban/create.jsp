<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- css -->
<link
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/assets/css/home/homeCommon.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/assets/css/home/problem.css"
	rel="stylesheet" type="text/css">



<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>
<body>

	<!-- head-Area -->
	<c:import url="/WEB-INF/views/home/include/header.jsp"></c:import>
	<!-- //head-Area -->

	<!-- content-Area -->
	<div class="container-fluid">
		<div class="row">
			<div id="content-Area" class="container">

				<!-- 왼쪽메뉴 -->
				<c:import url="/WEB-INF/views/home/include/aside.jsp"></c:import>
				<!-- //왼쪽메뉴 -->

				<div id="main" class="col-xs-10">
					<div id="content-title-area" class="row">
						<div id="content-title" class="col-xs-8">문제관리</div>
						<div id="breadcrumb-area" class="col-xs-4">
							<ol class="breadcrumb pull-right">
								<li class="breadcrumb-item">홈</li>
								<li class="breadcrumb-item">마이클래스</li>
								<li class="breadcrumb-item">반관리</li>
							</ol>
						</div>
					</div>
					<!-- //content-title-area -->

					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->
					<div id="content-body-area" class="row">
						<div class="col-xs-12">
							<form action="" method="">
								<div class="row">
									<div class="col-xs-2">반이름</div>
									<div class="col-xs-10">
										<input type="text" class="form-control input-sm"
											placeholder="반 이름을 입력해주세요" style="width: 600px;">
									</div>
								</div>

								<div class="row">
									<div class="col-xs-2">메인배너</div>
									<div class="col-xs-9">
										<input type="text" readonly  class="form-control input-sm"
											placeholder="메인배너 이미지를 넣어주세요" style="width: 500px;">
									</div>
									<div class="col-xs-1">
										<input type="file" class="btn btn-default btn-xs pull-right">
									</div>
								</div>
								<!-- //메인베너 -->

								<div class="row">
									<div class="col-xs-2">시작일</div>
									<div class="col-xs-8">
										<input type="datetime-local" class="form-control input-sm"
											placeholder="" style="width: 600px;">
									</div>
								</div>
								<!-- //시작일 -->

								<div class="row">
									<div class="col-xs-2">종료일</div>
									<div class="col-xs-8">
										<input type="datetime-local" class="form-control input-sm"
											placeholder="" style="width: 600px;">
									</div>
								</div>
								<!-- //종료일 -->

								<div class="row">
									<div class="col-xs-2">노출여부</div>
									<div class="radio col-xs-10">
										<label> 
											<input type="radio" name="chk_info" value="">보이기
										</label>
										<label>			
											<input type="radio" name="chk_info" value="">숨기기
										</label>
									</div>
								</div>
								<!-- //노출여부 -->

								<div class="row">
									<div class="col-xs-2">url</div>
									<div class="col-xs-10">
										<input type="text" class="form-control input-sm"
											placeholder="해당 반(블로그) 개설을 위해 url을 입력해주세요 ex) a,b,c,,1,2,3,가,나,다"
											style="width: 600px;">
										<button class="btn btn-default btn-xs">중복체크</button>
										※url의 경우 중복불가, 수정불가
									</div>
								</div>
								<!-- //노출여부 -->

								<div class="row">
									<div class="col-xs-6">
										<button class="btn btn-default btn-xs pull-right">저장</button>
									</div>
									<div class="col-xs-6">
										<button class="btn btn-default btn-xs pull-right">취소</button>
									</div>
								</div>
							</form>
						</div>
						<!-- container밑 row -->
					</div>
					<!-- //container -->




				</div>

			</div>
			<!-- //container-->
		</div>
		<!-- //row -->
	</div>
	<!-- //content-Area -->


	<!-- footer-Area -->
	<c:import url="/WEB-INF/views/home/include/footer.jsp"></c:import>
	<!-- //footer-Area -->

</body>
</html>




