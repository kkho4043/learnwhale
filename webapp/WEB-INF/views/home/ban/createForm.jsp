<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- css -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/homeCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/home/problem.css" rel="stylesheet" type="text/css">

<link href="${pageContext.request.contextPath}/assets/css/home/homeBanList.css" rel="stylesheet" type="text/css">


<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

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
						<div id="content-title" class="col-xs-8">반관리</div>
						<div id="breadcrumb-area" class="col-xs-4">
							<ol class="breadcrumb pull-right">
								<li class="breadcrumb-item">홈</li>
								<li class="breadcrumb-item">마이클래스</li>
								<li class="breadcrumb-item">반관리</li>
								<li class="breadcrumb-item">반생성</li>
							</ol>
						</div>
					</div>
					<!-- //content-title-area -->

					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->
					<div id="content-body-area" class="row">
						<div class="col-xs-12">
							<form id="createForm" action="" method="">
								<div class="row interval">
									<!-- 반이름 -->
									<label class="col-xs-2 text-right" for="name">반이름</label> <span class="col-xs-10"> <input type="text" class="form-control input-sm"
										id="name" placeholder="반 이름을 입력해주세요" style="width: 600px;">
									</span>
								</div>

								<div class="row interval">
									<label class="col-xs-2 text-right" for="banner">메인배너</label> <span class="col-xs-9"> <input type="text" readonly
										class="form-control input-sm" id="" placeholder="메인배너 이미지를 넣어주세요" style="width: 450px;">
									</span> <span class="col-xs-1"> <input type="file" id="banner" class="btn btn-default btn-xs pull-right">
									</span>
								</div>
								<!-- //메인베너 -->

								<div class="row interval">
									<label class="col-xs-2 text-right" for="startDate">시작일</label> <span class="col-xs-8"> <input type="datetime-local"
										class="form-control input-sm" id="startDate" placeholder="" style="width: 600px;">
									</span>
								</div>
								<!-- //시작일 -->

								<div class="row interval">
									<label class="col-xs-2 text-right" for="endDate">종료일</label> <span class="col-xs-8"> <input type="datetime-local"
										class="form-control input-sm" id="endDate" placeholder="" style="width: 600px;">
									</span>
								</div>
								<!-- //종료일 -->

								<div class="row interval">
									<label class="col-xs-2 text-right">노출여부</label>
									<div class="radio col-xs-10">
										<label> <input type="radio" name="chk_info" value="">보이기
										</label> <label> <input type="radio" name="chk_info" value="">숨기기
										</label>
									</div>
								</div>
								<!-- //노출여부 -->

								<div class="row interval">
									<label class="col-xs-2 text-right" for="url">url</label> <span class="col-xs-10"> <input type="text" class="form-control input-sm"
										placeholder="해당 반(블로그) 개설을 위해 url을 입력해주세요 ex) a,b,c,,1,2,3,가,나,다" id="url" style="width: 600px;">
										<button class="btn btn-default btn-xs" id="btnCheck">중복체크</button> ※url의 경우 중복불가, 수정불가
									</span>
								</div>
								<!-- //노출여부 -->

								<div class="row interval">
									<div class="col-xs-6">
										<button class="btn btn-default btn-xs pull-right">저장</button>
									</div>
									<div class="col-xs-6">
										<button class="btn btn-default btn-xs pull-right">
											<a href="${pageContext.request.contextPath}/h/list">취소</a>
										</button>
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

<script type="text/javascript" charset="utf-8">
	$("#btnCheck").on("click" , function(){
	console.log("중복체크 버튼 클릭");
	
	});

</script>


