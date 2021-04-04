<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:import url="/WEB-INF/views/ban/include/title.jsp"></c:import>

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
								<li class="breadcrumb-item">반생성</li>
							</ol>
						</div>
					</div>
					<!-- //content-title-area -->

					<!-- 여기서부터 각페이지에 맞게 코딩 시작-->
					<div id="content-body-area" class="row">
						<div class="col-xs-12">
							<form id="createForm"
								action="${pageContext.request.contextPath}/myclass/create"
								method="post" enctype="multipart/form-data">
								<div class="row interval">
									<!-- 반이름 -->
									<label class="col-xs-2 text-right" for="name">반이름</label> <span
										class="col-xs-10"> <input type="text"
										class="form-control input-sm" name="className" id="name"
										placeholder="반 이름을 입력해주세요" style="width: 710px;">
									</span>
								</div>

								<div class="row interval">
									<label class="col-xs-2 text-right" for="banner">메인배너</label> <span
										class="col-xs-9"> <input type="text" readonly
										class="form-control input-sm" id=""
										placeholder="메인배너 이미지를 넣어주세요" style="width: 710px; background-color: #fff;">
										<input type="file" id="banner"
										 name="logo">
									</span> 
								</div>
								<!-- //메인베너 -->

								<div class="row interval">
									<label class="col-xs-2 text-right" for="startDate">시작일</label>
									<span class="col-xs-8"> <input type="datetime-local"
										name="startDate" class="form-control input-sm" id="startDate"
										placeholder="" style="width: 710px;">
									</span>
								</div>
								<!-- //시작일 -->

								<div class="row interval">
									<label class="col-xs-2 text-right" for="endDate">종료일</label> <span
										class="col-xs-8"> <input type="datetime-local"
										name="endDate" class="form-control input-sm" id="endDate"
										placeholder="" style="width: 710px;">
									</span>
								</div>
								<!-- //종료일 -->

								<div class="row interval">
									<label class="col-xs-2 text-right" for="hidden">노출여부</label>
									<div class="radio col-xs-10">
										<label> <input type="radio" id="hidden" name="hidden" value="보이기">보이기
										</label> <label> <input type="radio" id="hidden" name="hidden" value="숨기기">숨기기
										</label>
									</div>
								</div>
								<!-- //노출여부 -->

								<div class="row interval">
									<label class="col-xs-2 text-right" for="url">url</label> <span
										class="col-xs-10"> <input type="text"
										class="form-control input-sm" name="classUrl"
										placeholder="해당 반(블로그) 개설을 위해 url을 입력해주세요 ex) a,b,c,,1,2,3,가,나,다"
										id="url" style="width: 710px;">
										<button type="button" class="btn btn-default btn-xs" id="btnCheck">중복체크</button>
										<p id="msg" class="text-danger">
											<!-- url 사용 가능 여부 메세지  -->
										</p> 
										<p class="text-warning">※ url의 경우 중복불가, 수정불가</p>
									</span>
								</div>
								<!-- //노출여부 -->

								<div class="row interval">
									<div>
										<button type="submit"
											class="btnSave btn btn-primary btn-sm pull-right">저장</button>
									</div>
									<div>
									<a href="${pageContext.request.contextPath}/myclass/list" style="color:#fff;">
										<button class="btnCancel btn btn-primary btn-sm pull-right">
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
	$("#btnCheck").on("click", function() {
		console.log("중복체크 버튼 클릭");
		var classUrl = $("#url").val();
		console.log(classUrl);

		//ajax데이터만 받을때
		$.ajax({

			url : "${pageContext.request.contextPath }/myclass/urlcheck",
			type : "post",
			/* contentType : "application/json", */
			data : {classUrl:classUrl},
		
			dataType : "text",
			success : function(result) {
				/*성공시 처리해야될 코드 작성*/
				if (result == 'can') {
					$("#msg").html("사용할수 있는 url 입니다.");
				} else {
					$('#msg').html("사용할수 없는 url 입니다.");
				}
			},
			error : function(XHR, status, error) {
				console.error(status + " : " + error);
			}
		});
	});
	
	//폼을 submit 할때 --> 
	$("#createForm").on("submit", function(){
		
		//반이름 체크
		var name = $("#name").val();
		console.log(name.length);
		
		if(name.length < 1){
			alert("반 이름을 입력하세요.");
			return false;
		}
		
		//시작일 체크
		var startDate = $("#startDate").val();
		console.log(startDate);
		if(startDate.length < 1){
			alert("달력 그림을 누르고 시작일을 입력하세요.");
			return false;
		}
		
		//종료일 체크
		var endDate = $("#endDate").val();
		if(endDate.length < 1){
			alert("달력 그림을 누르고 종료일을 입력하세요.");
			return false;
		}
		
		//보이기 숨기기 체크
	 	var check = $("input[name=hidden]:checked").val();
		console.log(check);
		
		if(!check){
			alert("생성 중인 반의 노출여부를 선택해주세요.");
			return false;
		} 
		
		//url 체크
		var url =$("#url").val();

		if(url.length < 1){
			alert("url을 입력하고 중복체크를 눌러주세요.");
			return false;
		}
			
		return true;
	});
</script>

</html>
										