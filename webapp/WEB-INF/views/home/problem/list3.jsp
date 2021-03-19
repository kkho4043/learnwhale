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
								<li class="breadcrumb-item">문제관리</li>
							</ol>
						</div>
					</div>
					<!-- //content-title-area -->

					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->

					
						<div id="cate-area" class="col-xs-3">
							<div id="cate">
								
								
								<div id="cate-controller" class="clearfix">
									<div class="collapse" id="collapseExample">		
											<button class="btn btn-primary btn-xs pull-left"
												id="folderMade">등록</button>
											<button class="btn btn-primary btn-xs pull-left"
												id="folderModify">수정</button>
											<button class="btn btn-danger btn-xs pull-left"
												id="folderDelete">삭제</button>
									</div>
									<button class="btn btn-default btn-xs pull-right" type="button"
										data-toggle="collapse" data-target="#collapseExample"
										aria-expanded="false">관리</button>
								</div>
								
								
								<div id="cate-list">리스트 만드세요</div>
							</div>

						</div>

						<!-- //col-xs-3 -->
						<div id="main-area" class="col-xs-9">
							<div class="row">
								<div id="controll-area" class="col-xs-12">
									<div class="row">
										<div class="col-xs-6">
											<form>
												<div class="form-group form-inline">
													<input type="text" class="form-control input-sm"
														id="txtSearchKyword" placeholder="">
													<button class="btn btn-default btn-sm" type="submit">검색</button>
												</div>
											</form>
										</div>
										<div class="col-xs-6">
											<button class="btn btn-primary btn-sm pull-right"
												type="button">문제등록</button>
										</div>
									</div>

								</div>
							</div>

							<div class="row">
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
											<th>문제명</th>
											<th>형식</th>
											<th>작성일</th>
											<th>관리</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="i" begin="0" end="15">
											<tr>
												<td>105</td>
												<td class="text-left"><a href="">별표찍기 마름모</a></td>
												<td>주관식</td>
												<td>2021-03-03</td>
												<td>
													<button class="btn btn-default btn-xs">삭제</button>
													<button class="btn btn-default btn-xs">이동</button>
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
											<li><a href="#" aria-label="Previous"> <span
													aria-hidden="true">&laquo;</span>
											</a></li>

											<c:forEach var="i" begin="1" end="10">
												<li><a href="#">${i}</a></li>
											</c:forEach>

											<li><a href="#" aria-label="Next"> <span
													aria-hidden="true">&raquo;</span>
											</a></li>
										</ul>
									</nav>
								</div>
							</div>


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

	<div class="modal fade" id="madeModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">폴더 생성</h4>
				</div>
				<div class="modal-body">
					<p>
						<input type="text" placeholder="폴더 이름을 입력해주세요"
							style="width: 400px;">
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary">저장하기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.madeModal -->

	<div class="modal fade" id="modifyModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">폴더 수정</h4>
				</div>
				<div class="modal-body">
					<p>
						<input type="text" placeholder="폴더 이름을 입력해주세요"
							style="width: 400px;">
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary">수정하기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.modifyModal -->

	<div class="modal fade" id="deleteModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title">폴더 삭제</h4>
				</div>
				<div class="modal-body">
					<p>
						<input type="text" placeholder="" style="width: 400px;">
					</p>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
					<button type="button" class="btn btn-primary">삭제하기</button>
				</div>
			</div>
			<!-- /.modal-content -->
		</div>
		<!-- /.modal-dialog -->
	</div>
	<!-- /.deleteModal -->
</body>
</html>
<script>
	$("#folderMade").on("click", function() {
		console.log("");

		//모달창 호출
		$("#madeModal").modal();
	});

	$("#folderModify").on("click", function() {
		console.log("");

		//모달창 호출
		$("#modifyModal").modal();
	});

	$("#folderDelete").on("click", function() {
		console.log("");

		//모달창 호출
		$("#deleteModal").modal();
	});
</script>



