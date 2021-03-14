<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="${pageContext.request.contextPath }/assets/bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="/learnwhale/assets/css/homepage.css">

<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery-1.12.4.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/bootstrap/js/bootstrap.js"></script>


<title>Insert title here</title>

<style>
body, div, ul, li, dl, dt, ol, h1, h2, h3, h4, h5, h6, input, fieldset, legend, p, select, table, th, td, tr, textarea, button, form {
	margin: 0px 0px 0px 0px;
	padding: 0px 0px 0px 0px;
}

body {
	font-family: "맑은 고딕", 돋움, 굴림;
	font-size: 12px;
}
</style>
</head>
<body>

	<div class="container">
		<div class="row">
			<form>
				<div class="col-md-1">반이름</div>
				<div class="col-md-11">
					<input type="text" placeholder="반 이름을 수정해주세요" style="width: 600px;">
				</div>

				<div class="row">
					<div class="col-md-1">메인배너</div>
					<div class="col-md-10">
						<input type="text" placeholder="메인배너 이미지를 수정해주세요" style="width: 600px;">
					</div>
					<div class="col-md-1">
						<input type="file">
					</div>
				</div>
				<!-- //메인베너 -->

				<div class="row">
					<div class="col-md-1">시작일</div>
					<div class="col-md-11">
						<input type="text" placeholder="" style="width: 600px;">
					</div>
				</div>
				<!-- //시작일 -->

				<div class="row">
					<div class="col-md-1">종료일</div>
					<div class="col-md-11">
						<input type="text" placeholder="" style="width: 600px;">
					</div>
				</div>
				<!-- //종료일 -->

				<div class="row">
					<div class="col-md-1">노출여부</div>
					<div class="col-md-11">
						<input type="radio" name="chk_info" value="">보이기 <input type="radio" name="chk_info" value="">숨기기
					</div>
				</div>
				<!-- //노출여부 -->

				<div class="row">
					<div class="col-md-6">
						<button type="submit" value="">수정</button>
					</div>
					<div class="col-md-6">
						<button type="button" value="">취소</button>
					</div>
				</div>
			</form>
			<!--  -->
		</div>
		<!-- container밑 row -->
	</div>
	<!-- //container -->


</body>
</html>