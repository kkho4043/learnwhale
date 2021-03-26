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
<link
	href="${pageContext.request.contextPath}/assets/css/home/homeBanList.css"
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
						<div id="content-title" class="col-xs-8">반관리</div>
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
					<div id="content-body-area" class="container-fluid row">
						<div class="row">
							<div class="col-xs-6 text-left">
								<form action="${pageContext.request.contextPath}/h/list"
									method="get">
									<div class="form-group text-left">
										<input type="text" name="search">
										<button type="submit" id=btn_search>검색</button>
									</div>
								</form>
							</div>
							<div class="col-xs-6 text-right">
								<button type="submit" id=btn_produce>
									<a href="${pageContext.request.contextPath}/h/createForm">반생성</a>
								</button>
							</div>

							<div class="row">
								<div class="col-xs-12">
									<table class="table table-striped table-hover table-bordered"
										style="margin-left: 15px;">
										<thead>
											<tr>
												<th>번호</th>
												<th>반이름</th>
												<th>시작일</th>
												<th>종료일</th>
												<th>인원</th>
												<th>상태</th>
												<th>관리</th>
												<th>비고</th>
											</tr>
										</thead>
										<tbody>
											<c:forEach items="${classList}" var="vo" varStatus="status">
												<tr>
													<td>${status.count}</td>
													<td><a
														href="${pageContext.request.contextPath}/${vo.classUrl}/exam/list">${vo.className}</a></td>
													<td>${vo.startDate}</td>
													<td>${vo.endDate}</td>

													<td>${vo.approval}/${vo.total}명</td>

													<td>${vo.state }</td>

													<td>${vo.hidden}</td>

													<td>
													<a href="${pageContext.request.contextPath}/h/modifyForm?classNo=${vo.classNo}">[수정]</a>
													<a href="${pageContext.request.contextPath}/h/remove?classNo=${vo.classNo}">[삭제]</a>
													</td>
												</tr>
											</c:forEach>

										</tbody>
									</table>

									<nav class="text-center">
										<ul class="pagination">
											<li><a href="#" aria-label="Previous"> <span
													aria-hidden="true">&laquo;</span>
											</a></li>
											<li><a href="#">1</a></li>
											<li class="active"><a href="#">2</a></li>
											<li><a href="#">3</a></li>
											<li><a href="#">4</a></li>
											<li><a href="#">5</a></li>
											<li><a href="#">6</a></li>
											<li><a href="#">7</a></li>
											<li><a href="#">8</a></li>
											<li><a href="#">9</a></li>
											<li><a href="#">10</a></li>
											<li><a href="#" aria-label="Next"> <span
													aria-hidden="true">&raquo;</span>
											</a></li>
										</ul>
									</nav>
								</div>
							</div>
							<!-- table row -->
						</div>
						<!-- //container밑 row -->
					</div>
					<!-- //content-body-area -->

					<!-- //여기서부터 각페이지에 맞게 코딩 끝 -->




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




