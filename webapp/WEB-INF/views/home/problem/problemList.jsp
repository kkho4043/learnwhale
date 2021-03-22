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
<link rel="stylesheet" href="/learnwhale/assets/css/home/category.css">

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
						<div id="content-title" class="col-xs-8">문제관리</div>
						<div id="breadcrumb-area" class="col-xs-4">
							<ol class="breadcrumb pull-right">
								<li class="breadcrumb-item">홈</li>
								<li class="breadcrumb-item">마이클래스</li>
								<li class="breadcrumb-item">문제관리</li>
							</ol>
						</div>
					</div>
					<!-- //content-title-area -->

					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->

					<div id="content-body-area" class="row">
						<c:import url="/WEB-INF/views/home/include/category.jsp"></c:import>

						<!-- //col-xs-3 -->
						<div id="main-area" class="col-xs-9">
							<div class="row">
								<div id="controll-area" class="col-xs-12">
									<div class="row">
										<div class="col-xs-6">
											<form>
												<div class="form-group form-inline">
													<input type="text" class="form-control input-sm" id="txtSearchKyword" placeholder="">
													<button class="btn btn-default btn-sm" type="submit"><span class="glyphicon glyphicon-search"></span></button>
												</div>
											</form>
										</div>
										<div class="col-xs-6">
											<a href="${pageContext.request.contextPath}/myclass/problem/creatingForm?cateNo=${param.cateNo}"><button class="btn btn-primary btn-sm pull-right" type="button">문제등록</button></a>
										</div>
									</div>

								</div>
							</div>

							<div class="row">
								<table class="table table-striped table-bordered table-hover">
									<colgroup>
										<col style="width: 10%;">
										<col>
										<col style="width: 15%;">
										<col style="width: 15%;">
										<col style="width: 20%;">
									</colgroup>
									<thead>
										<tr>
											<th>번호</th>
											<th>문제 제목</th>
											<th>문제 유형</th>
											<th>만든 날짜</th>
											<th id="thead-last">관리</th>
										</tr>
									</thead>
									
									<tbody>
										<c:forEach items="${proList}" var="proVo">
											<tr id="tr-center">
												<th>${proVo.problemNo}</th>
												<th><a href="">${proVo.problemTitle}</a></th>
												<th>${proVo.type}</th>
												<th>${proVo.regDate}</th>
												<td>
													<button class="btn btn-default btn-xs" id="delete-Btn">삭제</button>
													<button class="btn btn-default btn-xs" id="move-Btn">이동</button>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
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

							<div class="modal fade" id="delete-Modal">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal" aria-label="Close">
												<span aria-hidden="true"></span>
											</button>
											<h4 class="modal-title">문제 제목</h4>
										</div>
										<div class="modal-body">
											<p>if문</p>
										</div>
										<div class="modal-footer">
											<p style="float: left;">정말 삭제하시겠습니까?</p>
											<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
											<button type="button" class="btn btn-danger">삭제</button>
										</div>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal-dialog -->
							</div>
							<!-- /.modal -->
						</div>
						<!-- //col-xs-9 -->
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
	$("#delete-Btn").on("click", function() {
		console.log("삭제버튼 클릭");

		$("#delete-Modal").modal();
	});

	$("#move-Btn").on("click", function() {
		console.log("이동버튼 클릭");

		$("#move-Modal").modal();
	});
</script>
</html>




