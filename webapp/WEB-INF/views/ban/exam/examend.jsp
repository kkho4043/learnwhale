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
					<!-- //메인영역 타이틀 -->



					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->
					<div id="main-content-area">
						<div class="examsovle-informaion">
							<div class="row">
								<h3>${examVo.examTitle}</h3>
								<h3 style="margin-top: -10px;">(${examVo.examType})</h3>
							</div>
							<div class="row">

								<h2>고생하셨습니다</h2>
							</div>


							<div class="row" style="height: 100px; font-size: 25px;">
								<div class="col-xs-4">응시자 : ${classInfo.joinVo.username}</div>
								<div class="col-xs-4">
									<span>문항수 : </span><span>${examVo.problemAmount}개</span>
								</div>
								<div class="col-xs-4">
									<span>푼문제수 : </span><span>${examVo.solveAmount}개</span>
								</div>

								<div class="col-xs-5"></div>
							</div>


							<div class="row">
								<div class="col-xs-3">
									<c:if test="${examInfo.examVo.examType != '쪽지시험'}">
										<a
											href="${pageContext.request.contextPath}/${url}/exam/examsolve?examNo=${examInfo.examVo.examNo}&orderNum=${examInfo.qeustionVo.orderNum}&joinNo=${classInfo.joinVo.joinNo}"><button
												class="btn btn-primary btn-lg">문제로</button></a>
									</c:if>

								</div>
								<div class="col-xs-7"></div>
								<div class="col-xs-2">
									<a href="${pageContext.request.contextPath}/${url}/exam/examfinish?examNo=${examInfo.examVo.examNo}&joinNo=${classInfo.joinVo.joinNo}"><button
											class="btn btn-primary btn-lg">시험제출</button></a>
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




