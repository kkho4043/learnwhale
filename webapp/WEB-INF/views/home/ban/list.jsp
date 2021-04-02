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

<c:if test="${param.count == -1}">
	<script type="text/javascript">
		alert("반에 학생이 남아 있습니다.");
	</script>
</c:if>
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
								<form action="${pageContext.request.contextPath}/myclass/list"
									method="get">
									<div class="form-group form-inline">
										<input type="text" class="form-control input-sm" name="search">
										<button class="btn btn-default btn-sm" type="submit"
											id=btn_search>
											<span class="glyphicon glyphicon-search"></span>
										</button>
									</div>
								</form>
							</div>
							<div class="col-xs-6 text-right">
								<button type="submit" class="btn btn-primary btn-sm">
									<a href="${pageContext.request.contextPath}/myclass/createForm"
										style="color: #fff;">반생성</a>
								</button>
							</div>

							<div class="row">
								<div class="col-xs-11" style="width: 97%;">
									<table class="tableFontSize table table-striped table-hover table-bordered"
										style="margin-left: 15px;">

										<thead class="">
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
											<c:forEach items="${pMap.classList}" var="vo"
												varStatus="status">
												<tr>
													<td>${vo.classNo}</td>
													<td><a
														href="${pageContext.request.contextPath}/${vo.classUrl}"
														target="_blank">${vo.className}(${vo.classUrl })</a></td>
													<td>${vo.startDate}</td>
													<td>${vo.endDate}</td>

													<td>${vo.approval}/${vo.total}명</td>

													<td>${vo.state }</td>

													<td>${vo.hidden}</td>

													<td><button class="btn-modify btn btn-primary btn-xs">
															<a
																href="${pageContext.request.contextPath}/myclass/modifyForm?classNo=${vo.classNo}"
																style="color: #fff;">수정</a>
														</button>
														<button class="btn-delete btn btn-primary btn-xs" id="delete" data-classno="${vo.classNo }" data-classname="${vo.className }">
															삭제
														</button></td>
												</tr>

											</c:forEach>

										</tbody>

									</table>

									<form method="get" action="${pageContext.request.contextPath}/myclass/remove">
										<div class="modal fade" id="deleteModal">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
														<h4 class="modal-title">삭제하기</h4>
													</div>
													<div class="modal-body">
														
													</div>
													<input type="hide" name="classNo" value="" id="delno">
													<div class="modal-footer">
														<button type="button" class="btn btn-default"
															data-dismiss="modal">취소</button>
														<button type="submit" class="btn btn-primary">삭제</button>
													</div>
												</div>
												<!-- /.modal-content -->
											</div>
											<!-- /.modal-dialog -->
										</div>
										<!-- /.modal -->
									</form>

									<nav class="text-center" id="page">
										<ul class="pagination">
											<li><c:choose>
													<c:when test="${param.page <=1 or empty param.page }">
														<a
															href="${pageContext.request.contextPath }/myclass/list?page=1"
															aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
														</a>
													</c:when>
													<c:otherwise>
														<a
															href="${pageContext.request.contextPath }/myclass/list?page=${param.page -1}"
															aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
														</a>
													</c:otherwise>
												</c:choose></li>

											<c:forEach var="page" begin="${pMap.startPage }"
												end="${pMap.endPage }" step="1">
												<c:choose>
													<c:when
														test="${param.page eq page or (empty param.page and page==1)}">

														<li class="active"><a
															href="${pageContext.request.contextPath }/myclass/list?page=${page}&search=${param.search}">${page }</a></li>

													</c:when>
													<c:otherwise>

														<li><a
															href="${pageContext.request.contextPath }/myclass/list?page=${page}&search=${param.search}">${page }</a></li>

													</c:otherwise>
												</c:choose>
											</c:forEach>

											<li><c:choose>
													<c:when test="${param.page >= pMap.lastPage }">
														<a
															href="${pageContext.request.contextPath }/myclass/list?page=${pMap.lastPage}"
															aria-label="Next"> <span aria-hidden="true">&raquo;</span>
														</a>
													</c:when>
													<c:otherwise>
														<a
															href="${pageContext.request.contextPath }/myclass/list?page=${param.page +1}"
															aria-label="Next"> <span aria-hidden="true">&raquo;</span>
														</a>
													</c:otherwise>
												</c:choose></li>
										</ul>
									</nav>
									<!-- page -->

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
<script type="text/javascript">
	$(document).ready(function(){
		$("#delete").on("click", function() {
		//메인모달창 호출
		var classno = $(this).data("classno");
		console.log(classno);
		
		var classname = $(this).data("classname");
		console.log(classname);
		
		$("#delno").val(classno);
		
		$(".modal-body").text(classname+'을 삭제하시겠습니까?');
		
		$("#deleteModal").modal();
	});
		
	})
	
	
</script>


</html>




