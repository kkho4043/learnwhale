<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<c:import url="/WEB-INF/views/ban/include/title.jsp"></c:import>

<!-- css -->
<link href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ban/banCommon.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/assets/css/ban/exam.css" rel="stylesheet" type="text/css">


<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

</head>
<body>

	<!-- head-Area -->
	<c:import url="/WEB-INF/views/ban/include/header.jsp"></c:import>
	<!-- //head-Area -->

	<!-- top-banner -->

	<!-- //top-banner -->


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
							<li class="breadcrumb-item">반</li>
							<li class="breadcrumb-item">시험풀기</li>
						</ol>
					</div>
					<!-- //위치 -->

					<!-- 메인영역 타이틀 -->
					<div id="main-title">
						<div class="row" style="margin-top: 15px;">
							<div class="col-xs-3" style="padding-left: 50px;">
								<p>시험 풀기</p>
							</div>
							<div class="col-xs-2">
								<p>${classInfo.cvo.className}</p>
							</div>

							<div class="col-xs-7">
								<p>응시기간 :${examVo.startDate} ~ ${examVo.endDate}</p>
							</div>
						</div>
					</div>
					<!-- //메인영역 타이틀 -->



					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->
					<div id="main-content-area">
						<div class="examsovle-informaion">
							<div class="row">
								<div class="col-xs-3"></div>
								<div class="col-xs-6">
									<h1>${examVo.examTitle}</h1>
								</div>
								<div class="col-xs-3" style="margin-top: 22px; margin-left: -85px; font-size: 20px;">
									<c:if test="${examVo.time != null}">
										<span>문제당 제한 시간 </span>
										<span>${examVo.time}초</span>
									</c:if>
								</div>

							</div>

							<div class="row" style="height: 100px;">

								<h3 style="margin-top: -20px;">(${examVo.examType})</h3>

							</div>

							<div class="row" style="height: 100px; font-size: 25px;">
								<div class="col-xs-6">응시자 : ${classInfo.joinVo.username}</div>
								<div class="col-xs-6">
									<span>문항수 : </span><span>${examVo.problemAmount}개</span>
								</div>

								<div class="col-xs-5"></div>
							</div>

							<div class="row">
								<div class="col-xs-3">
									<a href="${pageContext.request.contextPath}/${url}"><button class="btn btn-primary btn-lg" style="margin-left: -90px;">리스트</button></a>
								</div>
								<div class="col-xs-7"></div>
								<div class="col-xs-2">
									<a href="${pageContext.request.contextPath}/${url}/exam/examsolve?examNo=${examVo.examNo}&orderNum=1&joinNo=${classInfo.joinVo.joinNo}"><button class="btn btn-primary btn-lg">시험풀기</button></a>
								</div>
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




