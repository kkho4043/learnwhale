<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="/WEB-INF/views/ban/include/title.jsp"></c:import>

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
								<li class="breadcrumb-item">반수정</li>
							</ol>
						</div>
					</div>
					<!-- //content-title-area -->

					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->
					<div id="content-body-area" class="row">
						<div class="col-xs-12">
							<form id="createForm" action="${pageContext.request.contextPath}/myclass/modify" method="post" enctype="multipart/form-data">
								<div class="row interval">
									<!-- 반이름 -->
									<label class="col-xs-2 text-right" for="name">반이름</label> <span class="col-xs-10"> <input type="text" class="form-control input-sm"
										name="className" id="name" value="${classVo.className }" style="width: 710px;">
									</span>
								</div>

								<div class="row interval">
									<label class="col-xs-2 text-right" for="banner">메인배너</label> <span class="col-xs-9"> <input type="text" readonly
										class="form-control input-sm" id="" placeholder="메인배너 이미지를  수정해주세요" style="width: 710px;">
										 <input type="file" id="banner" name="logo"
										value="${classVo.logoFile }">
									</span> 
								</div>
								<!-- //메인베너 -->

								<div class="row interval">
									<label class="col-xs-2 text-right" for="startDate">시작일</label> <span class="col-xs-8"> <input type="datetime-local" name="startDate"
										class="form-control input-sm" id="startDate" value="${classVo.startDate }" style="width: 710px;">
									</span>
								</div>
								<!-- //시작일 -->

								<div class="row interval">
									<label class="col-xs-2 text-right" for="endDate">종료일</label> <span class="col-xs-8"> <input type="datetime-local" name="endDate"
										class="form-control input-sm" id="endDate" value="${classVo.endDate }" style="width: 710px;">
									</span>
								</div>
								<!-- //종료일 -->

								<div class="row interval">
									<label class="col-xs-2 text-right" for="hidden">노출여부</label>
									<div class="radio col-xs-10">
										<c:choose>
											<c:when test="${requestScope.classVo.hidden == '보이기' }">
												<label> <input type="radio" id="hidden" name="hidden" value="보이기" checked="checked">보이기
												</label>
												<label style="margin-left: 20px;"> <input type="radio" id="hidden" name="hidden" value="숨기기">숨기기
												</label>
											</c:when>
											<c:otherwise>
												<label> <input type="radio" id="hidden" name="hidden" value="보이기">보이기
												</label>
												<label style="margin-left: 20px;"> <input type="radio" id="hidden" name="hidden" value="숨기기" checked="checked">숨기기
												</label>
											</c:otherwise>
										</c:choose>
										
									</div>
								</div>
								<!-- //노출여부 -->

								<div class="row interval">
									<label class="col-xs-2 text-right" for="url">url</label> <span class="col-xs-10"> <input type="text"
										class="form-control input-sm" placeholder="${classVo.classUrl }" id="url" style="width: 710px;">
										<p class="text-warning">※url의 경우 중복불가, 수정불가</p>
									</span>
								</div>
								<!-- //노출여부 -->
								<input type="hidden" name="classNo" value="${classVo.classNo}">
								<div class="row interval">
									<div class="">
										<button type="submit" class="btn btn-primary btn-sm pull-right">수정</button>
									</div>
									<div class="">
									<a href="${pageContext.request.contextPath}/myclass/list" style="color:#fff;">
										<button class="btn btn-primary btn-sm pull-right" type="button">
											취소
										</button>
									</a>
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


<script type="text/javascript">
	//폼을 submit 할때 --> 
	$("#createForm").on("submit", function() {

		//반이름 체크
		var name = $("#name").val();
		console.log(name.length);

		if (name.length < 1) {
			alert("반 이름을 수정하세요.");
			return false;
		}

		//시작일 체크
		var startDate = $("#startDate").val();
		console.log(startDate);
		if (startDate.length < 1) {
			alert("달력 그림을 누르고 시작일을 수정하세요.");
			return false;
		}

		//종료일 체크
		var endDate = $("#endDate").val();
		if (endDate.length < 1) {
			alert("달력 그림을 누르고 종료일을 수정하세요.");
			return false;
		}

		//보이기 숨기기 체크
		var check = $("input[name=hidden]:checked").val();
		console.log(check);

		if (!check) {
			alert("생성 중인 반의 노출여부를 수정해주세요.");
			return false;
		}

		return ture;
	});
</script>

</html>
