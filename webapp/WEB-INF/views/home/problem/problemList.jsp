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
<link rel="stylesheet" href="/learnwhale/assets/css/home/category.css">

<!-- js -->
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/assets/bootstrap/js/bootstrap.js"></script>

<!-- <style>
	 #not-selected {
  width: 650px;
  height: 400px;
  background: #FF7777;
  -webkit-font-smoothing: antialiased;
  display: flex;
  justify-content: center;
  align-items: center;
}

h1 {
  height: 100px;
}

h1 span {
  position: relative;
  top: 20px;
  display: inline-block;
  animation: bounce .3s ease infinite alternate;
  font-family: 'Titan One', cursive;
  font-size: 50px;
  color: #FFF;
  text-shadow: 0 1px 0 #CCC,
               0 2px 0 #CCC,
               0 3px 0 #CCC,
               0 4px 0 #CCC,
               0 5px 0 #CCC,
               0 6px 0 transparent,
               0 7px 0 transparent,
               0 8px 0 transparent,
               0 9px 0 transparent,
               0 10px 10px rgba(0, 0, 0, .4);
}

h1 span:nth-child(2) { animation-delay: .1s; }
h1 span:nth-child(3) { animation-delay: .2s; }
h1 span:nth-child(4) { animation-delay: .3s; }
h1 span:nth-child(5) { animation-delay: .4s; }
h1 span:nth-child(6) { animation-delay: .5s; }
h1 span:nth-child(7) { animation-delay: .6s; }
h1 span:nth-child(8) { animation-delay: .7s; }

@keyframes bounce {
  100% {
    top: -20px;
    text-shadow: 0 1px 0 #CCC,
                 0 2px 0 #CCC,
                 0 3px 0 #CCC,
                 0 4px 0 #CCC,
                 0 5px 0 #CCC,
                 0 6px 0 #CCC,
                 0 7px 0 #CCC,
                 0 8px 0 #CCC,
                 0 9px 0 #CCC,
                 0 50px 25px rgba(0, 0, 0, .2);
  }
}
	</style> -->

<style>
#problemList .btn-primary {
	background-color: #75ACDC;
	margin-right: 4px;
}

#problemList .btn-danger {
	background-color: #F765F0;
	border-color: #EC2FE3;
	margin-left: 4px;
}
</style>

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
													<button class="btn btn-default btn-sm" type="submit">
														<span class="glyphicon glyphicon-search"></span>
													</button>
												</div>
											</form>
										</div>
										<div class="col-xs-6">

											<button class="btn btn-primary btn-sm pull-right" style="display:none;"  type="button" id="creatbtn">문제등록</button>

											<input type="hidden" id="cateNosave">
										</div>
									</div>

								</div>
							</div>

							<div class="row">
								<table class="table table-striped table-bordered table-hover">
									<colgroup>
										<col style="width: 12%;">
										<col>
										<col style="width: 15%;">
										<col style="width: 15%;">
										<col style="width: 15%;">
									</colgroup>
									<thead>
										<tr>
											<th>문제 번호</th>
											<th>문제 제목</th>
											<th>문제 유형</th>
											<th>만든 날짜</th>
											<th id="thead-last">관리</th>
										</tr>
									</thead>

									<tbody id="problemList"></tbody>

								</table>
							</div>


							<!-- <div id="not-selected">
								<h1>
								  <span>폴</span>
								  <span>더</span>
								  <span>를</span>
								  <span></span>
								  <span>선</span>
								  <span>택</span>
								  <span>해</span>
								  <span>주</span>
								  <span>세</span>
								  <span>요</span>
								</h1>
							</div> -->

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

							<form method="post" action="${pageContext.request.contextPath}/myclass/problem/move">
								<div class="modal fade" id="move-Modal">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
													<span aria-hidden="true"></span>
												</button>
												<h4 class="modal-title">문제 제목</h4>
												<input id="input-proNo" type="hidden" value="" name="problemNo">
											</div>
											<div class="modal-body">
												<p id="proTitle"></p>
												<select name="cateName" id="cateMainSelectBox">
													<option selected disabled>폴더를 선택해 주세요</option>
													<c:forEach items="${cateList }" var="cateList">
														<c:choose>
															<c:when test="${cateList.depth == 0}">
																<option data-group="${cateList.groupNo }" class="select" value="${cateList.groupNo}">${cateList.cateName}</option>
															</c:when>
														</c:choose>
													</c:forEach>
												</select> <select id="cateSubSelectBox" name="cateNo" style="display: none;">
													<option selected disabled>서브폴더를 선택해 주세요</option>
													<c:forEach items="${cateList }" var="cateList">
														<c:choose>
															<c:when test="${cateList.depth == 1 }">
																<option class="subSelect" id="${cateList.groupNo }" data-group="${cateList.groupNo }" value="${cateList.cateNo}">${cateList.cateName }</option>
															</c:when>
														</c:choose>
													</c:forEach>
												</select>
											</div>
											<div class="modal-footer">
												<p style="float: left;">문제를 다른 폴더로 옮기시겠습니까?</p>
												<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
												<button type="submit" class="btn btn-primary">이동</button>
											</div>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal-dialog -->
								</div>
								<!-- /.modal -->
							</form>

							<form method="post" action="${pageContext.request.contextPath}/myclass/problem/move">
								<div class="modal fade" id="delete-Modal">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header">
												<button type="button" class="close" data-dismiss="modal" aria-label="Close">
													<span aria-hidden="true"></span>
												</button>
												<h4 class="modal-title">문제 제목</h4>
												<input id="deleteInput-proNo" type="text" value="" name="problemNo">
											</div>
											<div class="modal-body">
												<p id="delete-proTitle"></p>
												<input type="text" value="119" name="cateNo">
											</div>
											<div class="modal-footer">
												<p style="float: left;">문제를 삭제하시겠습니까?</p>
												<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
												<button type="submit" class="btn btn-danger">삭제</button>
											</div>
										</div>
										<!-- /.modal-content -->
									</div>
									<!-- /.modal-dialog -->
								</div>
								<!-- /.modal -->
							</form>




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
	$(document)
			.ready(
					function() {

						$(document)
								.on(
										"click",
										"#move",
										function() {
											console.log("이동버튼 클릭");

											var title = $(this).data("title");
											var proNo = $(this).data("prono");

											document.getElementById("proTitle").innerHTML = "문제 제목 :  "
													+ title;
											$("#input-proNo").val(proNo);

											$("#move-Modal").modal();
										});

						$(document)
								.on(
										"click",
										"#problem-delete",
										function() {
											console.log("삭제버튼 클릭");

											var title = $(this).data("title");
											var proNo = $(this).data("prono");

											document
													.getElementById("delete-proTitle").innerHTML = "문제 제목 :  "
													+ title;
											$("#deleteInput-proNo").val(proNo);

											$("#delete-Modal").modal();
										});
					});

	$(document).ready(function() {
		$("#cateMainSelectBox").change(function() {

							var group = $(this).val();

							$("#cateSubSelectBox").show();

							$(
									"#cateSubSelectBox option[data-group='"
											+ group + "']").show();
							$("#cateSubSelectBox option").not(
									"[data-group='" + group + "']").hide();
							/* console.log(group);
							console.log($("#cateSubSelectBox").nextAll("#"+group).getAttribute("id")); */
						});

			});

	/* $("#cateMainSelectBox").change(function() {
						var groupNo = $(this).val();

						$.ajax({
									url : "${pageContext.request.contextPath }/myclass/problem/getSubCate",
									type : "get",
									contentType : "application/json",
									data : {
										groupNo : groupNo,
									},
									success : function(data) {
										$("#cateSubSelectBox").css("display","");
										$('#cateSubSelectBox').empty();

										for (var i = 0; i < data.length; i++) {
											$('#cateSubSelectBox').append(
															  '<option>'
															+ data[i].cateName
															+ '</option>');
										}

									},
									error : function(XHR, status, error) {
										console.error(status + " : " + error);
									}
								});
					}); */

	$("#creatbtn").on("click",function() {
						var cateN = document.getElementById("cateNosave").value

						location.href = "${pageContext.request.contextPath}/myclass/problem/creatingForm?cateNo="
								+ cateN;

	});
</script>
</html>




