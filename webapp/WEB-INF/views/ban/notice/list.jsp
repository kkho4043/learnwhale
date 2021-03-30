<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Insert title here</title>

<!-- css -->
<link
	href="${pageContext.request.contextPath}/assets/bootstrap/css/bootstrap.css"
	rel="stylesheet" type="text/css">
<link
	href="${pageContext.request.contextPath}/assets/css/ban/banCommon.css"
	rel="stylesheet" type="text/css">

<link
	href="${pageContext.request.contextPath}/assets/css/ban/notice.css"
	rel="stylesheet" type="text/css">


<!-- js -->
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

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

						<div id="report-area" class="col-xs-12">

							<div class="row">
								<div class="col-xs-12">

									<div id="controll-area" class="row">
										<div id="selecOpt" class="col-xs-6"></div>
										<div class="col-xs-6">
											<form action="${pageContext.request.contextPath}/${url}/notice/list" method="get">
												<div class="form-group form-inline">
													<input type="text" class="form-control input-sm" name="keyword" id="txtSearchKyword" placeholder="">
													<button class="btn btn-default btn-sm" type="submit">검색</button>
												</div>
											</form>
										</div>
									</div>

									<div class="row">
										<div class="col-xs-12">
											<table class="table table-striped table-bordered table-hover">
												<colgroup>
													<col style="width: 10%;">
													<col>
													<col style="width: 10%;">
													<col style="width: 15%;">
													<col style="width: 15%;">
												</colgroup>
												<thead class="">
													<tr>
														<th>번호</th>
														<th>제목</th>
														<th>글쓴이</th>
														<th>조회수</th>
														<th>작성일</th>
														<th>관리</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach items="${requestScope.pMap.nList}" var="nvo">
														<tr>
															<td>${nvo.no}</td>
															<td class="text-left"><a href="${pageContext.request.contextPath}/${url}/notice/read?no=${nvo.no}">${nvo.title}</a></td>
															<td>${nvo.name}</td>
															<td>${nvo.hit}</td>
															<td>${nvo.reg_date}</td>

															<td><a href="${pageContext.request.contextPath}/${url}/notice/remove?no=${nvo.no}">[삭제]</a></td>							
															
															<!-- 미해결
															<td><c:if test="${authUser.no == nvo.join_no}">
																	<a href="${pageContext.request.contextPath}/noice/remove?no=${nvo.no}">[삭제]</a>
																</c:if>
															</td>
															 -->
															
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
													<c:if test="${pMap.prev == true}">
														<li>
															<a href="${pageContext.request.contextPath}/notice/list?crtPage=${pMap.startPageBtnNo-1}&keyword=${param.keyword}" aria-label="Previous">
																<span aria-hidden="true">&laquo;</span>
															</a>
														</li>	
													</c:if>

													<c:forEach begin="${pMap.startPageBtnNo}" end="${pMap.endPageBtnNo}" step="1"  var="page">
														<li><a href="${pageContext.request.contextPath}/notice/list?crtPage=${page}&keyword=${param.keyword}">${page}</a></li>
													</c:forEach>

													<c:if test="${pMap.next == true}">
														<li>
															<a href="${pageContext.request.contextPath}/notice/list?crtPage=${pMap.endPageBtnNo+1}&keyword=${param.keyword}" aria-label="Next">
																<span aria-hidden="true">&raquo;</span>
															</a>
														</li>
													</c:if>
												</ul>
											</nav>
										</div>
									</div>
									<!-- //pagination 끝 -->

									<a id="btn_write" href="${pageContext.request.contextPath}/${url}/notice/writeForm">글쓰기</a>

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