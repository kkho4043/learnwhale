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
							<li class="breadcrumb-item">시험관리</li>
						</ol>
					</div>
					<!-- //위치 -->

					<!-- 메인영역 타이틀 -->
					<div id="main-title">
						<div class="row">
							<div class="col-xs-12">
								<p>시험 관리</p>
							</div>
						</div>
					</div>
					<!-- //메인영역 타이틀 -->



					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->
					<div id="main-content-area">

						<div id="student-list" class="col-xs-2">
							<ol>
								<c:forEach var="i" begin="1" end="20">
									<li><a href="">유재석(제출)</a></li>
								</c:forEach>
							</ol>
						</div>
						<!-- //student-list -->

						<div id="report-area" class="col-xs-10">
							<div class="row">
								<div class="col-xs-12">
									<div class="row">
										<div class="col-xs-12">
											<table class="table table-striped table-bordered table-hover">
												<colgroup>
													<col style="width: 10%;">
													<col>
													<col style="width: 15%;">
													<col style="width: 15%;">
												</colgroup>
												<thead class="">
													<tr>
														<th>번호</th>
														<th>문제명</th>
														<th>오답여부</th>
														<th>형식</th>
														
													</tr>
												</thead>
												<tbody>
													<c:forEach var="i" begin="0" end="15">
														<tr>
															<td>105</td>
															<td class="text-left"><a href="">별표찍기 마름모</a></td>
															<td>O</td>
															<td>주관식</td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
										</div>
									</div>


									<div class="row">
										<div class="col-xs-12 text-center">
											<nav>
												<ul class="pagination">
													<li><a href="#" aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
													</a></li>

													<c:forEach var="i" begin="1" end="10">
														<li><a href="#">${i}</a></li>
													</c:forEach>

													<li><a href="#" aria-label="Next"> <span aria-hidden="true">&raquo;</span>
													</a></li>
												</ul>
											</nav>
										</div>
									</div>


								</div>
							</div>
						</div>
						<!-- //report-area -->



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



